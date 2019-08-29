require 'rails_helper'

describe UsersController do
  describe 'GET #show' do
    it "ユーザーマイページに飛べるか" do
      get :show, params: {  id: 1 }
    end
  end

  describe 'GET #edit' do
    it "renders the :new template" do
    end
  end
end