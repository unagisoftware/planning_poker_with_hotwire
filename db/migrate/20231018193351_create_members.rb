class CreateMembers < ActiveRecord::Migration[7.1]
  def change
    create_table :members do |t|
      t.belongs_to :game, null: false, foreign_key: true
      t.string :name
      t.integer :estimation

      t.timestamps
    end
  end
end
