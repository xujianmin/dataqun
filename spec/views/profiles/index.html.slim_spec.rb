require 'rails_helper'

RSpec.describe "profiles/index", type: :view do
  before(:each) do
    assign(:profiles, [
      Profile.create!(
        :ref => "Ref",
        :name => "Name",
        :gender => false,
        :id_num => "Id Num",
        :id_type => "Id Type",
        :occupation => "Occupation",
        :employer => "Employer",
        :position => "Position",
        :country => "Country",
        :province => "Province",
        :city => "City",
        :address => "Address",
        :post_code => "Post Code",
        :cellphone => "Cellphone",
        :telphone => "Telphone"
      ),
      Profile.create!(
        :ref => "Ref",
        :name => "Name",
        :gender => false,
        :id_num => "Id Num",
        :id_type => "Id Type",
        :occupation => "Occupation",
        :employer => "Employer",
        :position => "Position",
        :country => "Country",
        :province => "Province",
        :city => "City",
        :address => "Address",
        :post_code => "Post Code",
        :cellphone => "Cellphone",
        :telphone => "Telphone"
      )
    ])
  end

  it "renders a list of profiles" do
    render
    assert_select "tr>td", :text => "Ref".to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "Id Num".to_s, :count => 2
    assert_select "tr>td", :text => "Id Type".to_s, :count => 2
    assert_select "tr>td", :text => "Occupation".to_s, :count => 2
    assert_select "tr>td", :text => "Employer".to_s, :count => 2
    assert_select "tr>td", :text => "Position".to_s, :count => 2
    assert_select "tr>td", :text => "Country".to_s, :count => 2
    assert_select "tr>td", :text => "Province".to_s, :count => 2
    assert_select "tr>td", :text => "City".to_s, :count => 2
    assert_select "tr>td", :text => "Address".to_s, :count => 2
    assert_select "tr>td", :text => "Post Code".to_s, :count => 2
    assert_select "tr>td", :text => "Cellphone".to_s, :count => 2
    assert_select "tr>td", :text => "Telphone".to_s, :count => 2
  end
end
