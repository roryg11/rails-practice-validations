require 'rails_helper'

describe Person do
  it 'validates that person requires first name' do
    person = Person.new()

    person.valid?

    expect(person.errors[:first_name]).to include("can't be blank")
  end
  it 'validates that person requires last name' do
    person = Person.new

    person.valid?

    expect(person.errors[:last_name]).to include("can't be blank")
  end
  it 'validates that person requires date of birth' do
    person=Person.new

    person.valid?

    expect(person.errors[:date_of_birth]).to include("can't be blank")
  end
end
