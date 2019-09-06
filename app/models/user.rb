class User < ApplicationRecord
  include Clearance::User
  has_many :cats, dependent: :destroy
end
