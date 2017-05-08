require 'rails_helper'

RSpec.describe "phones/show", type: :view do
  before(:each) do
    @phone = assign(:phone, Phone.create!(
      :work => "Work",
      :home => "Home",
      :mobile => "Mobile",
      :contact_id => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Work/)
    expect(rendered).to match(/Home/)
    expect(rendered).to match(/Mobile/)
    expect(rendered).to match(/2/)
  end
end
