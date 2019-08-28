require 'rails_helper'
describe Group do
  describe '#create' do
    it "nameが空の時は登録できない" do
      group = Group.new(name: "")
      group.valid?
      expect(group.errors[:name]).to include("を入力してください")
    end
  end
end