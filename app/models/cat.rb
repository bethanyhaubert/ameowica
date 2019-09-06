# frozen_string_literal: true

class Cat < ApplicationRecord
  belongs_to :user
  has_and_belongs_to_many :favorite_things
  has_one_attached :image
end
