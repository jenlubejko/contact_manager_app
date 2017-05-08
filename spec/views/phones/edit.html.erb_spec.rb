require 'rails_helper'

RSpec.describe "phones/edit", type: :view do
  before(:each) do
    @phone = assign(:phone, Phone.create!(
      :work => "MyString",
      :home => "MyString",
      :mobile => "MyString",
      :contact_id => 1
    ))
  end

  it "renders the edit phone form" do
    render

    assert_select "form[action=?][method=?]", phone_path(@phone), "post" do

      assert_select "input#phone_work[name=?]", "phone[work]"

      assert_select "input#phone_home[name=?]", "phone[home]"

      assert_select "input#phone_mobile[name=?]", "phone[mobile]"

      assert_select "input#phone_contact_id[name=?]", "phone[contact_id]"
    end
  end
end
