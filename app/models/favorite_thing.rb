# frozen_string_literal: true

class FavoriteThing < ApplicationRecord
  has_and_belongs_to_many :cats
end
