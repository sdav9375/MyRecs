class RemoveRecsFromUserProfile < ActiveRecord::Migration[6.0]
  def change
    change_table :recs do |t|
      t.remove_references :user_profile
    end
  end
end
