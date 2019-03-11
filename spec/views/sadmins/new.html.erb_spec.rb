require 'rails_helper'

RSpec.describe "sadmins/new", type: :view do
  before(:each) do
    assign(:sadmin, Sadmin.new(
      :first_name => "MyString",
      :last_name => "MyString",
      :email => "MyString",
      :organization => "MyString",
      :phone_number => ""
    ))
  end

  it "renders new sadmin form" do
    render

    assert_select "form[action=?][method=?]", sadmins_path, "post" do

      assert_select "input#sadmin_first_name[name=?]", "sadmin[first_name]"

      assert_select "input#sadmin_last_name[name=?]", "sadmin[last_name]"

      assert_select "input#sadmin_email[name=?]", "sadmin[email]"

      assert_select "input#sadmin_organization[name=?]", "sadmin[organization]"

      assert_select "input#sadmin_phone_number[name=?]", "sadmin[phone_number]"
    end
  end
end
