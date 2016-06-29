module Findable


  def find_by_name(name)
    self.all.detect {|item| item.name}
  end

end
