require 'rails_helper'

RSpec.describe "critters/new", type: :view do
  before(:each) do
    assign(:critter, Critter.new(
      :name => "MyString",
      :age => 1,
      :crit_type => 1
    ))
  end

  it "renders new critter form" do
    render

    assert_select "form[action=?][method=?]", critters_path, "post" do

      assert_select "input[name=?]", "critter[name]"

      assert_select "input[name=?]", "critter[age]"

      assert_select "input[name=?]", "critter[crit_type]"
    end
  end
end
