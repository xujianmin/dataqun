require 'rails_helper'

RSpec.describe "profiles/show", type: :view do
  before(:each) do
    @profile = assign(:profile, Profile.create!(
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
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Ref/)
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/Id Num/)
    expect(rendered).to match(/Id Type/)
    expect(rendered).to match(/Occupation/)
    expect(rendered).to match(/Employer/)
    expect(rendered).to match(/Position/)
    expect(rendered).to match(/Country/)
    expect(rendered).to match(/Province/)
    expect(rendered).to match(/City/)
    expect(rendered).to match(/Address/)
    expect(rendered).to match(/Post Code/)
    expect(rendered).to match(/Cellphone/)
    expect(rendered).to match(/Telphone/)
  end
end
