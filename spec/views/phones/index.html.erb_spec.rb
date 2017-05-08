require 'rails_helper'

RSpec.describe "phones/index", type: :view do
  before(:each) do
    assign(:phones, [
      Phone.create!(
        :work => "Work",
        :home => "Home",
        :mobile => "Mobile",
        :contact_id => 2
      ),
      Phone.create!(
        :work => "Work",
        :home => "Home",
        :mobile => "Mobile",
        :contact_id => 2
      )
    ])
  end

  it "renders a list of phones" do
    render
    assert_select "tr>td", :text => "Work".to_s, :count => 2
    assert_select "tr>td", :text => "Home".to_s, :count => 2
    assert_select "tr>td", :text => "Mobile".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
