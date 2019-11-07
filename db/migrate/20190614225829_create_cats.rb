# frozen_string_literal: true

class CreateCats < ActiveRecord::Migration[5.2]
  def change
    create_table :cats do |t|
      t.string :name
      t.datetime :birthday
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
