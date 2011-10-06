class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :real_name, :email, :password, :password_confirmation, :remember_me
  attr_accessible :name, :bio, :twitter, :facebook, :skype, :aim, :site
  attr_accessible :pet, :house, :house_points
  attr_accessible :wand_tree, :wand_length, :wand_core, :wand_spec

  validates_uniqueness_of :name, :email
  validates_presence_of   :name, :email, :password
  validates_length_of     :name, :minimum => 6

  searchable do
    text :name, :email, :twitter, :facebook, :tumblr, :real_name
  end


  def to_param
    name
  end

end
