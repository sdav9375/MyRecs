class CreateRecs < ActiveRecord::Migration[6.0]
  def change
    create_table :recs do |t|
      t.string :title
      t.string :link
      t.text :description
      t.references :user_profile, null: false, foreign_key: true

      t.timestamps
    end
  end
end
