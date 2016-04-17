require 'rails_helper'

RSpec.describe "profiles/edit", type: :view do
  before(:each) do
    @profile = assign(:profile, Profile.create!(
      :ref => "MyString",
      :name => "MyString",
      :gender => false,
      :id_num => "MyString",
      :id_type => "MyString",
      :occupation => "MyString",
      :employer => "MyString",
      :position => "MyString",
      :country => "MyString",
      :province => "MyString",
      :city => "MyString",
      :address => "MyString",
      :post_code => "MyString",
      :cellphone => "MyString",
      :telphone => "MyString"
    ))
  end

  it "renders the edit profile form" do
    render

    assert_select "form[action=?][method=?]", profile_path(@profile), "post" do

      assert_select "input#profile_ref[name=?]", "profile[ref]"

      assert_select "input#profile_name[name=?]", "profile[name]"

      assert_select "input#profile_gender[name=?]", "profile[gender]"

      assert_select "input#profile_id_num[name=?]", "profile[id_num]"

      assert_select "input#profile_id_type[name=?]", "profile[id_type]"

      assert_select "input#profile_occupation[name=?]", "profile[occupation]"

      assert_select "input#profile_employer[name=?]", "profile[employer]"

      assert_select "input#profile_position[name=?]", "profile[position]"

      assert_select "input#profile_country[name=?]", "profile[country]"

      assert_select "input#profile_province[name=?]", "profile[province]"

      assert_select "input#profile_city[name=?]", "profile[city]"

      assert_select "input#profile_address[name=?]", "profile[address]"

      assert_select "input#profile_post_code[name=?]", "profile[post_code]"

      assert_select "input#profile_cellphone[name=?]", "profile[cellphone]"

      assert_select "input#profile_telphone[name=?]", "profile[telphone]"
    end
  end
end
