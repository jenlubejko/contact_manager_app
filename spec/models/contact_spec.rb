require 'rails_helper'

RSpec.describe Contact, :type => :model do
  it 'is invalid without a name' do
    contact = Contact.new(name: nil)
    expect(contact).not_to be_valid
  end
end
