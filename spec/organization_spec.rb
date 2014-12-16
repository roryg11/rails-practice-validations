require 'rails_helper'

describe Organization do
  it 'validates that Organization as a name' do
    org = Organization.new()

    org.valid?

    expect(org.errors[:name]).to include("can't be blank")
  end
end
