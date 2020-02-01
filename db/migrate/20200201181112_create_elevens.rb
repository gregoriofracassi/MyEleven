class CreateElevens < ActiveRecord::Migration[5.2]
  def change
    create_table :elevens do |t|
      t.integer :formation
      t.references :user, foreign_key: true
      t.references :team, foreign_key: true

      t.timestamps
    end
  end
end
