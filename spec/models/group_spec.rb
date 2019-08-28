require 'rails_helper'
describe Group do
  describe '#create' do
    it "nameが空の時は登録できない" do
      group = build(:group, name: "")
      group.valid?
      expect(group.errors[:name]).to include("を入力してください")
    end

    # it "nameが15文字なら登録できる" do
    #   group = Group.new(:group, name: "aaaaaaaaaaaaaaa" )
    #   expect(group).to be_valid
    # end

    # it "nameが15文字を超える場合は登録できない" do
    #   group = Group.new(:group, name: "aaaaaaaaaaaaaaaa" )
    #   group.valid?
    #   expect(group.errors[:name]).to include("は15文字以内で入力してください")
    # end
  end
end