class Subscription < ApplicationRecord
  belongs_to :user
  belongs_to :publisher
  validates :user_id, uniqueness: { scope: :publisher_id,
    message: "subscription already present" }

end
