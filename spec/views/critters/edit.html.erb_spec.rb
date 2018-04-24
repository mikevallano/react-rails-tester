require 'rails_helper'

RSpec.describe "critters/edit", type: :view do
  before(:each) do
    @critter = assign(:critter, Critter.create!(
      :name => "MyString",
      :age => 1,
      :crit_type => 1
    ))
  end

  it "renders the edit critter form" do
    render

    assert_select "form[action=?][method=?]", critter_path(@critter), "post" do

      assert_select "input[name=?]", "critter[name]"

      assert_select "input[name=?]", "critter[age]"

      assert_select "input[name=?]", "critter[crit_type]"
    end
  end
end
