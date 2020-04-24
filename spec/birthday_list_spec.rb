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

end