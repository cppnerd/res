class State < ActiveRecord::Base
  scope :by_abbr, lambda {|a|
    where(:abbr => a)
  }

  def self.list(opts={})
    State.find(:all, opts).collect{|s| [s.name,s.id]}
  end
end
