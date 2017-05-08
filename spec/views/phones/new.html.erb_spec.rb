require 'rails_helper'

RSpec.describe "phones/new", type: :view do
  before(:each) do
    assign(:phone, Phone.new(
      :work => "MyString",
      :home => "MyString",
      :mobile => "MyString",
      :contact_id => 1
    ))
  end

  it "renders new phone form" do
    render

    assert_select "form[action=?][method=?]", phones_path, "post" do

      assert_select "input#phone_work[name=?]", "phone[work]"

      assert_select "input#phone_home[name=?]", "phone[home]"

      assert_select "input#phone_mobile[name=?]", "phone[mobile]"

      assert_select "input#phone_contact_id[name=?]", "phone[contact_id]"
    end
  end
end
