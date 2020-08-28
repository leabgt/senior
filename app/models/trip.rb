class Trip < ApplicationRecord
  belongs_to :user
  geocoded_by :arrival_address
  after_validation :geocode, if: :will_save_change_to_address?
end
