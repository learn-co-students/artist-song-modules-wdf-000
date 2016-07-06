module Memorable
  module ClassMethods
    # this works because we have a getter #all which returns the @@artist and @@songs from Artist and Song repectively
    def reset_all
      self.all.clear
    end

    def count
      self.all.count
    end

    # remember this method is passed an instance of a class
    def find_by_name(name)
      self.all.detect { |o| o.name  }
    end
  end

  module InstanceMethods
    def initialize
      self.class.all << self
    end
  end
end
