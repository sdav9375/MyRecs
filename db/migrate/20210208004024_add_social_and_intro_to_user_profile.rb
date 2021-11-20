class AddSocialAndIntroToUserProfile < ActiveRecord::Migration[6.0]
  def change
    add_column :user_profiles, :social, :string
    add_column :user_profiles, :intro, :text
  end
end
