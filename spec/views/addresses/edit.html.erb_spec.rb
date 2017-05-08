require 'rails_helper'

RSpec.describe "addresses/edit", type: :view do
  before(:each) do
    @address = assign(:address, Address.create!(
      :street => "MyString",
      :city => "MyString",
      :state => "MyString",
      :country => "MyString",
      :zip => "MyString",
      :latitude => "MyString",
      :longitude => "MyString",
      :contact_id => 1
    ))
  end

  it "renders the edit address form" do
    render

    assert_select "form[action=?][method=?]", address_path(@address), "post" do

      assert_select "input#address_street[name=?]", "address[street]"

      assert_select "input#address_city[name=?]", "address[city]"

      assert_select "input#address_state[name=?]", "address[state]"

      assert_select "input#address_country[name=?]", "address[country]"

      assert_select "input#address_zip[name=?]", "address[zip]"

      assert_select "input#address_latitude[name=?]", "address[latitude]"

      assert_select "input#address_longitude[name=?]", "address[longitude]"

      assert_select "input#address_contact_id[name=?]", "address[contact_id]"
    end
  end
end
