class Timezone < ActiveRecord::Base

  def offset
    self.GMT.to_d
  end
  def self.list(opts={})
    Timezone.find(:all, opts).collect{|zone| [zone.name,zone.id]}
  end
end
