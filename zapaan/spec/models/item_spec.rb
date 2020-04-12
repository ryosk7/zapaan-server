require 'rails_helper'

RSpec.describe Item, type: :model do
  it "itemレコードはただ一つのtodoレコードに属する" do
    should belong_to(:todo)
  end
  it "保存前にnameカラムが存在する" do
    should validate_presence_of(:name)
  end
end
