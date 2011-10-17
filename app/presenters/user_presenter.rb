class UserPresenter
  def initialize(user, template)
    @user = user
    @template = template
  end

  def house
  	handle_none @user.house do
  		h.content_tag :span, "#{@user.house}", style: "display:none;"
  	end
  end

  def house_points
    handle_none @user.house_points do
    	@user.house_points
    end
  end

  def pet
  	handle_none @user.pet do
  		h.content_tag :span, "#{@user.pet}"
  	end
  end

  def wand_tree
    handle_none @user.wand_tree do
    	h.content_tag :span, "#{@user.wand_tree}"
    end
  end
  def wand_core
    handle_none @user.wand_core do
    	h.content_tag :span, "#{@user.wand_core}"
    end
  end
  def wand_length
    handle_none @user.wand_length do
    	h.content_tag :span, "#{@user.wand_length}  Inches Long,"
    end
  end
  def wand_spec
    handle_none @user.wand_spec do
    	h.content_tag :span, "#{@user.wand_spec}"
    end
  end

  def twitter
    handle_link "twitter", @user.twitter do
      h.link_to "", "http://twitter.com/#{@user.twitter}", id: "twitter"
    end
  end

  def tumblr
  	handle_link "tumblr", @user.tumblr do
  	  h.link_to "" , "http://#{@user.tumblr}.tumblr.com", id: "tumblr"
  	end
  end

  def facebook
  	handle_link "facebook", @user.facebook do
  	  h.link_to "" , "http://facebook.com/#{@user.facebook.to_s}", id: "facebook"
  	end	
  end

  def aim
  	handle_link "aim", @user.aim do
  	  h.link_to "" , "aim:goim?screenname=#{@user.aim.to_s}", id: "aim"
  	end
  end

  def skype
  	handle_link "skype", @user.skype do
  	  h.link_to "" , "skype:#{@user.skype.to_s}?chat", id: "skype"
  	end
  end

private

  def self.presents(name)
    define_method(name) do
      @object
    end
  end

  def h
    @template
  end

  def handle_link(type, value)
  	if value.present?
  	  yield
  	else
  	  h.link_to "", "#", id: "#{type}-disabled"
  	end 
  end

  def handle_none(value)
    if value.present?
      yield
    else
      h.content_tag :span, "None given", class: "none"
    end
  end


  def avatar_name
    if user.avatar_image_name.present?
      user.avatar_image_name
    else
      "default.png"
    end
  end
end