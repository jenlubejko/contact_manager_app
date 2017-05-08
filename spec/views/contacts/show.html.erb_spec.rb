require 'rails_helper'

RSpec.describe "contacts/show", type: :view do
  before(:each) do
    @contact = assign(:contact, Contact.create!(
      :name => "Name",
      :company => "Company",
      :favorite => false,
      :smallImageURL => "Small Image Url",
      :largeImageURL => "Large Image Url",
      :email => "Email",
      :website => "Website",
      :birthdate => "Birthdate"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Company/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/Small Image Url/)
    expect(rendered).to match(/Large Image Url/)
    expect(rendered).to match(/Email/)
    expect(rendered).to match(/Website/)
    expect(rendered).to match(/Birthdate/)
  end
end
