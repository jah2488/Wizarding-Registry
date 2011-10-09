class AddGooglePlusAndYoutubeToUsers < ActiveRecord::Migration
  def change
    add_column :users, :google_plus, :string
    add_column :users, :youtube, :string
  end
end
