class CreateStartings < ActiveRecord::Migration[5.2]
  def change
    create_table :startings do |t|
      t.string :position
      t.references :player, foreign_key: true
      t.references :eleven, foreign_key: true

      t.timestamps
    end
  end
end
