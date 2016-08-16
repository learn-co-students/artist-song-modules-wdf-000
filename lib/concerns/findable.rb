module Findable
  module ClassMethods
    def find_by_name(name)
      self.all.detect do |value|
        value.name
      end
    end
  end
end
