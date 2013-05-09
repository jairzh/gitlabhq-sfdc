class AddExternAuthAvatarUrlToUsers < ActiveRecord::Migration
  def change
    add_column :users, :extern_avatar_url, :string
  end
end
