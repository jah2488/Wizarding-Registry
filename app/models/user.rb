class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :real_name, :email, :password, :password_confirmation, :remember_me
  attr_accessible :name, :bio, :tumblr, :twitter, :facebook, :skype, :aim, :site, :site2, :youtube, :google_plus
  attr_accessible :pet, :house, :house_points
  attr_accessible :wand_tree, :wand_length, :wand_core, :wand_spec

  # validates_uniqueness_of :name, :email, :tumblr, :facebook, :twitter, :real_name
  validates_presence_of   :name, :email
  validates_length_of     :name, :minimum => 6

  # searchable do  #Sunspot helpers... not useable on heroku :(
  #   text :name, :email, :twitter, :facebook, :tumblr, :real_name
  # end


  def to_param
    name
  end
  
  def update_with_password(params={})
    params.delete(:current_password)
    self.update_without_password(params)
  end

  def self.search(search)
    if search
      query = "%#{search}%"
      results = where('name      LIKE ? OR
                       email     LIKE ? OR
                       tumblr    LIKE ? OR
                       twitter   LIKE ? OR
                       facebook  LIKE ? OR
                       real_name LIKE ?', query, query, query, query, query, query)
      return results
    else
      scoped
    end
  end

end
