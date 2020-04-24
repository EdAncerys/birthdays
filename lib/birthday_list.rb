class BirthdayList

  def initialize
    @list = []
  end

  def add(name, date)
    @list << { name: name, birthday: date }
  end

  def show
    @list.each do |bday|
      puts "#{bday[:name]}: #{bday[:birthday]}"
    end
  end

end