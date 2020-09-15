require 'rails_helper'


RSpec.describe SnsCredential, type: :model do

  # 1
  it "provider、uid、user_idが全て入っていれば登録できること" do
    sns = build(:sns_credential)
    expect(sns).to be_valid
  end

  # 2
  it "uidがなければ登録できないこと" do
    sns = build(:sns_credential, uid: nil)
    sns.valid?
    expect(sns.errors[:uid]).to include()
  end

  # 3
  it "providerがなければ登録できないこと" do
    sns = build(:sns_credential, provider: nil)
    sns.valid?
    expect(sns.errors[:provider]).to include()
  end

  # 4
  it "user_idがなければ登録できないこと" do
    sns = build(:sns_credential, user_id: nil)
    sns.valid?
    expect(sns.errors[:user_id]).to include()
  end

  # 5
  it "同じuidは登録できないこと" do
    sns = build(
      :sns_credential,
      uid:      "123",
      provider: "facebook",
      user_id:  1
    )
    sns_another = build(
      :sns_credential,
      uid:      "123",
      provider: "facebook",
      user_id:  2
    )
    expect(sns_another.errors[:uid]).to include()
  end

  # 6
  it "uidが違う場合は、同じproviderでも登録できること" do
    sns = build(
      :sns_credential,
      uid:      "123",
      provider: "facebook",
      user_id:  1
    )
    sns_another = build(
      :sns_credential,
      uid:      "456",
      provider: "facebook",
      user_id:  2
    )
    expect(sns).to be_valid
    expect(sns_another).to be_valid
  end

end
