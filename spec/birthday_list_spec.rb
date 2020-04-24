require 'birthday_list'

describe BirthdayList do
  subject(:birthday_list) { described_class.new }
  # Store all of my friends’ birthdays so I can keep track of them
  it 'should store my firends birthdays' do
    expect(birthday_list).to respond_to(:add).with(2).argument
  end

  it 'adds a birthday' do
    expect(birthday_list.add('Guy Fawkes', "13 April 1570")).to eq [{ name: 'Guy Fawkes', birthday: "13 April 1570" }]
  end

  it 'adds two birthdays' do
    birthday_list.add('Guy Fawkes', "13 April 1570")
    expect(birthday_list.add('Julie Andrews', "1 October 1935")).to eq [{ name: 'Guy Fawkes', birthday: "13 April 1570" }, { name: 'Julie Andrews', birthday: "1 October 1935" }]
  end

  # See them all at once with their names and birthdays each on a line in a tidy format


end