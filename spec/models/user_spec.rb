require 'rails_helper'
describe User do
  describe '#create' do
    it "nameが空の時は登録できない" do
      user = User.new(name: "")
      user.valid?
      expect(user.errors[:name]).to include("を入力してください")
    end

    it "emailが空の時は登録できない" do
      user = User.new(email: "")
      user.valid?
      expect(user.errors[:email]).to include("を入力してください")
    end

    it "passwordが空の時は登録できない" do
      user = User.new(password: "")
      user.valid?
      expect(user.errors[:password]).to include("を入力してください")
    end
  end
end