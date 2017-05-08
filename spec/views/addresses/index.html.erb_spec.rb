require 'rails_helper'

RSpec.describe "addresses/index", type: :view do
  before(:each) do
    assign(:addresses, [
      Address.create!(
        :street => "Street",
        :city => "City",
        :state => "State",
        :country => "Country",
        :zip => "Zip",
        :latitude => "Latitude",
        :longitude => "Longitude",
        :contact_id => 2
      ),
      Address.create!(
        :street => "Street",
        :city => "City",
        :state => "State",
        :country => "Country",
        :zip => "Zip",
        :latitude => "Latitude",
        :longitude => "Longitude",
        :contact_id => 2
      )
    ])
  end

  it "renders a list of addresses" do
    render
    assert_select "tr>td", :text => "Street".to_s, :count => 2
    assert_select "tr>td", :text => "City".to_s, :count => 2
    assert_select "tr>td", :text => "State".to_s, :count => 2
    assert_select "tr>td", :text => "Country".to_s, :count => 2
    assert_select "tr>td", :text => "Zip".to_s, :count => 2
    assert_select "tr>td", :text => "Latitude".to_s, :count => 2
    assert_select "tr>td", :text => "Longitude".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
