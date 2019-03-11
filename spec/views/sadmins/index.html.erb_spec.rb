require 'rails_helper'

RSpec.describe "sadmins/index", type: :view do
  before(:each) do
    assign(:sadmins, [
      Sadmin.create!(
        :first_name => "First Name",
        :last_name => "Last Name",
        :email => "Email",
        :organization => "Organization",
        :phone_number => ""
      ),
      Sadmin.create!(
        :first_name => "First Name",
        :last_name => "Last Name",
        :email => "Email",
        :organization => "Organization",
        :phone_number => ""
      )
    ])
  end

  it "renders a list of sadmins" do
    render
    assert_select "tr>td", :text => "First Name".to_s, :count => 2
    assert_select "tr>td", :text => "Last Name".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Organization".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
  end
end
