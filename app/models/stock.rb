class Stock < ApplicationRecord
  belongs_to :user
  attachment :image
end
