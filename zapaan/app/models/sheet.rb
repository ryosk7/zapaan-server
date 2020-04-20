class Sheet < ApplicationRecord
  acts_as_paranoid without_default_scope: true
end
