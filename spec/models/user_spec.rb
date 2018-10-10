require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user) { User.create!(email: "user@blocitoff.com", password: "password") }

  it { is_expected.to have_many(:items) }

  it { is_expected.to validate_presence_of(:email) }
  it { is_expected.to validates_uniqueness_of(:email) }

  it { is_expected.to validate_presence_of(:password) }
  
end
