class Sheet < ApplicationRecord
  acts_as_paranoid without_default_scope: true

  before_create do |sheet|
    sheet.default_settings
  end

  def default_settings
    self.start_time = Date.today
  end
end
