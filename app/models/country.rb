class Country < ActiveRecord::Base
  has_many :airports
  set_primary_key :code
  
  scope :by_abbr, lambda {|a|
    where(:abbr => a)
  }

  def to_s
    self.name
  end
  
  def self.list(opts={})
    Country.find(:all, opts).collect{|c| [c.name,c.code]}
  end
end
