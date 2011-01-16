class Airport < ActiveRecord::Base

  validates :name, :code, :city, :presence => true
  validates :state, :presence => true, :if => :in_united_states?
  validates :code, :uniqueness => true

  belongs_to :country, :foreign_key => 'code'
  has_many :flights

  def in_united_states?
    ['US'].include?(country)
  end

  def self.list(opts={})
    Airport.find(:all, opts).collect{|a| ["#{a.code} - #{a.name}","#{a.code}"]}
  end
end
