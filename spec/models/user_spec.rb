require 'rails_helper'

RSpec.describe User, type: :model do
  before do
    @user = FactoryBot.build(:user)
  end

  describe 'ユーザー新規登録' do
    context '新規登録がうまくいくとき' do
      it 'usernameとemail、passwordとpassword_confirmationが存在すれば登録できること' do
        expect(@user).to be_valid
      end
    end

    it "usernameが空では登録できないこと" do
      @user.username = nil
      @user.valid?
      expect(@user.errors.full_messages).to include("Username can't be blank")
    end
end
