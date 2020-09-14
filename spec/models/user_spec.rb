require 'rails_helper'

describe User do
  describe '#create' do

    # 1
    it "nikcnameがない場合は登録できないこと" do
      user = build(:user, nickname: nil)
      user.valid?
      expect(user.errors[:nickname]).to include("を入力してください")
    end

    # 2
    it "emailがない場合は登録できないこと" do
      user = build(:user, email: nil)
      user.valid?
      expect(user.errors[:email]).to include("を入力してください", "は不正な値です")
    end

    # 3
    it "first_nameがない場合は登録できないこと" do
      user = build(:user, first_name: nil)
      user.valid?
      expect(user.errors[:first_name]).to include("は不正な値です", "を入力してください")
    end

    # 4
    it "last_nameがない場合は登録できないこと" do
      user = build(:user, last_name: nil)
      user.valid?
      expect(user.errors[:last_name]).to include("は不正な値です", "を入力してください")
    end

    # 5
    it "first_name_kanaがない場合は登録できないこと" do
      user = build(:user, first_name_kana: nil)
      user.valid?
      expect(user.errors[:first_name_kana]).to include("は不正な値です", "を入力してください")
    end

    # 6
    it "last_name_kanaがない場合は登録できないこと" do
      user = build(:user, last_name_kana: nil)
      user.valid?
      expect(user.errors[:last_name_kana]).to include("は不正な値です", "を入力してください")
    end

    # 7
    it "birthdayがない場合は登録できないこと" do
      user = build(:user, birthday: nil)
      user.valid?
      expect(user.errors[:birthday]).to include("を入力してください")
    end

    # 8
    it "passwordが存在してもpassword_confirmationがない場合は登録できないこと" do
      user = build(:user, password_confirmation: "")
      user.valid?
      expect(user.errors[:password_confirmation]).to include("とパスワードの入力が一致しません")
    end

    # 9
    it " 重複したemailが存在する場合は登録できないこと " do
      user = create(:user)
      another_user = build(:user, email: user.email)
      another_user.valid?
      expect(another_user.errors[:email]).to include("はすでに存在します")
    end

    # 10
    it " passwordが7文字以上であれば登録できること " do
      user = build(:user, password: "1234567", password_confirmation: "1234567")
      expect(user).to be_valid
    end

    # 11
    it " passwordが6文字以下であれば登録できないこと " do
      user = build(:user, password: "123456", password_confirmation: "123456")
      user.valid?
      expect(user.errors[:password]).to include("は7文字以上で入力してください")
    end

    # 12
    it "nicknameとemail、passwordとpassword_confirmation、first_name、last_name、first_name_kana、last_name_kana、birthdayが存在すれば登録できること" do
      user = build(:user)
      expect(user).to be_valid
    end

  end
end