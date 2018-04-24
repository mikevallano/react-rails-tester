require 'rails_helper'

RSpec.describe "critters/show", type: :view do
  before(:each) do
    @critter = assign(:critter, Critter.create!(
      :name => "Name",
      :age => 2,
      :crit_type => 3
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
  end
end
