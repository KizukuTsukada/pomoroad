require 'rails_helper'

describe User do
  describe '#create' do
    # name
    it "nameが空の時は登録できない" do
      user = build(:user, name: "")
      user.valid?
      expect(user.errors[:name]).to include("を入力してください")
    end
    # email
    it "emailが空の時は登録できない" do
      user = build(:user, email: "")
      user.valid?
      expect(user.errors[:email]).to include("を入力してください")
    end
    # password
    it "passwordが空の時は登録できない" do
      user = build(:user, password: "")
      user.valid?
      expect(user.errors[:password]).to include("を入力してください")
    end

    # emailの重複
    it "is invalid with a duplicate email address" do
      #はじめにユーザーを登録
      user = create(:user)
      #先に登録したユーザーと同じemailの値を持つユーザーのインスタンスを作成
      another_user = build(:user)
      another_user.valid?
      expect(another_user.errors[:email]).to include("はすでに存在します")
    end
  end
end