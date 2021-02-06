class CreateReferrals < ActiveRecord::Migration[6.0]
  def change
    create_table :referrals do |t|
      t.string :title
      t.string :link
      t.text :comment
      t.string :company
      t.string :category

      t.timestamps
    end
  end
end
