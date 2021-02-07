class RenameUserAccountsToUsers < ActiveRecord::Migration[6.0]
  def change
    rename_table :user_accounts, :users
  end
end
