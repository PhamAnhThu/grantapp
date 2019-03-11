require 'rails_helper'

RSpec.describe "sadmins/show", type: :view do
  before(:each) do
    @sadmin = assign(:sadmin, Sadmin.create!(
      :first_name => "First Name",
      :last_name => "Last Name",
      :email => "Email",
      :organization => "Organization",
      :phone_number => ""
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/First Name/)
    expect(rendered).to match(/Last Name/)
    expect(rendered).to match(/Email/)
    expect(rendered).to match(/Organization/)
    expect(rendered).to match(//)
  end
end
