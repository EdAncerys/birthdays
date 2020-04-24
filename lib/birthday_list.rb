class BirthdayList

  def initialize
    @birthday_list = []
  end

  def add(name, birthday)
    list = {:name => name, :birthday => birthday}
    @birthday_list << list
  end
end