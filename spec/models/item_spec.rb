require 'rails_helper'

RSpec.describe Item, type: :model do

  let(:item) { Item.create!( name: name)}

  it { is_expected.to belong_to(:user) }

  describe "attributes" do
    it "has name attribute" do
      expect(item).to have_attributes(name: "To_Do name")
    end
end
