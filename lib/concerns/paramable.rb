module Paramable
  attr_accessor :name
  name = self.name
  def to_param
    name.downcase.gsub(' ', '-')
  end
end
