require 'rails_helper'

RSpec.describe "critters/index", type: :view do
  before(:each) do
    assign(:critters, [
      Critter.create!(
        :name => "Name",
        :age => 2,
        :crit_type => 3
      ),
      Critter.create!(
        :name => "Name",
        :age => 2,
        :crit_type => 3
      )
    ])
  end

  it "renders a list of critters" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
  end
end
