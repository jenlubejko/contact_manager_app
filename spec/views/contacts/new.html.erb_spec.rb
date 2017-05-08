require 'rails_helper'

RSpec.describe "contacts/new", type: :view do
  before(:each) do
    assign(:contact, Contact.new(
      :name => "MyString",
      :company => "MyString",
      :favorite => false,
      :smallImageURL => "MyString",
      :largeImageURL => "MyString",
      :email => "MyString",
      :website => "MyString",
      :birthdate => "MyString"
    ))
  end

  it "renders new contact form" do
    render

    assert_select "form[action=?][method=?]", contacts_path, "post" do

      assert_select "input#contact_name[name=?]", "contact[name]"

      assert_select "input#contact_company[name=?]", "contact[company]"

      assert_select "input#contact_favorite[name=?]", "contact[favorite]"

      assert_select "input#contact_smallImageURL[name=?]", "contact[smallImageURL]"

      assert_select "input#contact_largeImageURL[name=?]", "contact[largeImageURL]"

      assert_select "input#contact_email[name=?]", "contact[email]"

      assert_select "input#contact_website[name=?]", "contact[website]"

      assert_select "input#contact_birthdate[name=?]", "contact[birthdate]"
    end
  end
end
