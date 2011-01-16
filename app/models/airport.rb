class Airport < ActiveRecord::Base

  validates :name, :code, :city, :country, :timezone, :presence => true
  validates :state, :presence => true, :if => :in_united_states?
  validates :code, :uniqueness => true

  belongs_to :country, :foreign_key => 'country_code'
  belongs_to :timezone
  #has_many :flights

  def in_united_states?
    ['US'].include?(country)
  end

  def self.list(opts={})
    Airport.find(:all, opts).collect{|a| ["#{a.code} - #{a.name}","#{a.code}"]}
  end
end
