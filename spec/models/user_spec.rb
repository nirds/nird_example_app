require 'rails_helper'

RSpec.describe User, type: :model do
  it 'is invalid without an email' do
    expect(described_class.new(password: 'password', password_confirmation: 'password')).to be_invalid
  end
end
