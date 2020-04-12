require 'rails_helper'

RSpec.describe Todo, type: :model do
  it "todoモデルがitemモデルと1対mの関係である" do
    should have_many(:items).dependent(:destroy)
  end
  it "保存前にtitleカラムが存在する" do
    should validate_presence_of(:title)
  end
  it "保存前にcreated_byカラムが存在する" do
    should validate_presence_of(:created_by)
  end
end
