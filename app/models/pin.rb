class Pin < ApplicationRecord
  belongs_to :user
  has_many :com, dependent: :destroy

  regex_url = /^(https?:\/\/)?([\da-z\.-]+)\.([a-z\.]{2,6})([\/\w \.-]*)*\/?$/
  validates :img, presence: true,
                  format: { with: regex_url }
end
