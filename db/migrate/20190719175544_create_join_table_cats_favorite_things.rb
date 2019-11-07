# frozen_string_literal: true

class CreateJoinTableCatsFavoriteThings < ActiveRecord::Migration[5.2]
  def change
    create_join_table :cats, :favorite_things do |t|
      t.index %i[cat_id favorite_thing_id]
      t.index %i[favorite_thing_id cat_id]
    end
  end
end
