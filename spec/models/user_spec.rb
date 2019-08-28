require 'rails_helper'
describe User do
  describe '#create' do
  it "nameが空の場合、登録できない" do
    user = build(:user, name: nil)
    user.valid?
    expect(user.errors[:name]).to include("を入力してください")
  end
  end
end