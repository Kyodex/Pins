class User < ApplicationRecord
  has_many :pin, dependent: :destroy
end
