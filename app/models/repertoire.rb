class Repertoire < ApplicationRecord
  belongs_to :user
  has_many :contacts
  has_many :users, through: :contacts
end
