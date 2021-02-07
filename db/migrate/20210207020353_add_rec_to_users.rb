class AddRecToUsers < ActiveRecord::Migration[6.0]
  def change
    change_table :recs do |t|
      t.belongs_to :user
    end
  end
end
