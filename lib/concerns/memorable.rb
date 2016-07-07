module Memorable
  module InstanceMethods
    @@all = []
    def initialize
      @@all << self
    end
  end
  module ClassMethods
    include Memorable::InstanceMethods
    def find_by_name(name)
      @@all.detect{|a| a.name}
    end
    def reset_all
      self.all.clear
    end

    def count
      @@all.count
    end
  end
end
