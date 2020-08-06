require 'rails_helper'

describe Address do
  describe '#create' do

    # 1
    it "destination_first_nameがない場合は登録できないこと" do
      address = build(:address, destination_first_name: nil)
      address.valid?
      expect(address.errors[:destination_first_name]).to include("can't be blank")
    end

    # 2
    it "destination_last_nameがない場合は登録できないこと" do
      address = build(:address, destination_last_name: nil)
      address.valid?
      expect(address.errors[:destination_last_name]).to include("can't be blank")
    end

    # 3
    it "destination_first_name_kanaがない場合は登録できないこと" do
      address = build(:address, destination_first_name_kana: nil)
      address.valid?
      expect(address.errors[:destination_first_name_kana]).to include("can't be blank")
    end

    # 4
    it "destination_last_name_kanaがない場合は登録できないこと" do
      address = build(:address, destination_last_name_kana: nil)
      address.valid?
      expect(address.errors[:destination_last_name_kana]).to include("can't be blank")
    end

    # 5
    it "postal_codeがない場合は登録できないこと" do
      address = build(:address, postal_code: nil)
      address.valid?
      expect(address.errors[:postal_code]).to include("can't be blank")
    end

    # 6
    it "prefecture_idがない場合は登録できないこと" do
      address = build(:address, prefecture_id: nil)
      address.valid?
      expect(address.errors[:prefecture_id]).to include("can't be blank")
    end

    # 7
    it "cityがない場合は登録できないこと" do
      address = build(:address, city: nil)
      address.valid?
      expect(address.errors[:city]).to include("can't be blank")
    end

    # 8
    it "blockがない場合は登録できないこと" do
      address = build(:address, block: nil)
      address.valid?
      expect(address.errors[:block]).to include("can't be blank")
    end

    it "destination_first_name、destination_last_name、destination_first_name_kana、destination_last_name_kana、postal_code、prefecture_id、city、block全てが存在すれば登録できること" do
      address = build(:address)
      expect(address).to be_valid
    end

  end
end