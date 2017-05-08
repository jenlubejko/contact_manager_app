require 'rails_helper'

RSpec.describe "contacts/index", type: :view do
  before(:each) do
    assign(:contacts, [
      Contact.create!(
        :name => "Name",
        :company => "Company",
        :favorite => false,
        :smallImageURL => "Small Image Url",
        :largeImageURL => "Large Image Url",
        :email => "Email",
        :website => "Website",
        :birthdate => "Birthdate"
      ),
      Contact.create!(
        :name => "Name",
        :company => "Company",
        :favorite => false,
        :smallImageURL => "Small Image Url",
        :largeImageURL => "Large Image Url",
        :email => "Email",
        :website => "Website",
        :birthdate => "Birthdate"
      )
    ])
  end

  it "renders a list of contacts" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Company".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "Small Image Url".to_s, :count => 2
    assert_select "tr>td", :text => "Large Image Url".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Website".to_s, :count => 2
    assert_select "tr>td", :text => "Birthdate".to_s, :count => 2
  end
end
