class CreateUsers < ActiveRecord::Migration
  def change
      add_column :users, :name,      :string
      add_column :users, :bio,       :text
 
      add_column :users, :house,     :string
      add_column :users, :house_points, :integer
 
      add_column :users, :pet,       :string
 
      add_column :users, :wand_tree, :string
      add_column :users, :wand_core, :string
      add_column :users, :wand_length, :integer
      add_column :users, :wand_spec, :string
 
      add_column :users, :facebook,  :string
      add_column :users, :twitter,   :string
      add_column :users, :tumblr,    :string
      add_column :users, :aim,       :string
      add_column :users, :skype,     :string
 
      add_column :users, :site,      :string
      add_column :users, :site2,     :string
      add_column :users, :more,       :text
  end
end
