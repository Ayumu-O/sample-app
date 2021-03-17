class CreateUserBands < ActiveRecord::Migration[6.1]
  def change
    create_table :user_bands do |t|
      t.references :user, null: false, foreign_key: true
      t.references :band, null: false, foreign_key: true
      t.string :position

      t.timestamps
    end
  end
end
