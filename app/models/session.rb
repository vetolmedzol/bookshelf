class Session < ApplicationRecord
  belongs_to :user

  before_create :add_secure_key

  def add_secure_key
    self.key = SecureRandom.hex(40)
  end
end
