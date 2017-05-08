require 'rails_helper'

RSpec.describe "contacts/edit", type: :view do
  before(:each) do
    @contact = assign(:contact, Contact.create!(
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

  it "renders the edit contact form" do
    render

    assert_select "form[action=?][method=?]", contact_path(@contact), "post" do

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
