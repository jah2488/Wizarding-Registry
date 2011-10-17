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

  def wand(type, args="")
    handle_none eval("@user.wand_#{type}") do
      h.content_tag :span, "#{eval("@user.wand_#{type}")} #{args}", class: "wand-text"
    end
  end

  def link(type)
    type = type
    url  = ""
    case type
    when "twitter"
      url = "http://twitter.com/#{@user.twitter}"
    when "facebook"
      url = "http://facebook.com/#{@user.facebook.to_s}"
    when "tumblr"
      url = "http://#{@user.tumblr}.tumblr.com"
    when "aim"
      url = "aim:goim?screenname=#{@user.aim.to_s}"
    when "skype"
      url = "skype:#{@user.skype.to_s}?chat"
    when "google"
      url = "https://plus.google.com/#{@user.google_plus}/posts"
    when "youtube"
      url = "http://youtube.com/#{@user.youtube.to_s}"
    when "email"
      url = "mailto:#{@user.email}"
    when "site"
      url = "#{@user.site}"
    when "site2"
      url = "#{@user.site2}"
    end
    link_handler(type, url)
  end

  def link_handler(type, url)
    handle_link "#{type}", eval("@user.#{type}") do
      h.link_to "", url, id: "#{type}"    end
  end

  def email
    handle_link "email", @user.email do
      h.link_to "", "mailto:#{@user.email}" , id: "email", confirm: "Just to let you know. We cannot guarantee a death eater did not curse this link with computer viruses or Pr0n. Are you sure you trust this wizard?"   
    end
  end

  def site
    handle_link "site", @user.site do
      h.link_to "" , "http://#{@user.site}" , id: "site", confirm: "Just to let you know. We cannot guarantee a death eater did not curse this link with computer viruses or Pr0n. Are you sure you trust this wizard?"
    end
  end

  def site2
    handle_link "site", @user.site2 do
      h.link_to "" , "http://#{@user.site2}" , id: "site", confirm: "Just to let you know. We cannot guarantee a death eater did not curse this link with computer viruses or Pr0n. Are you sure you trust this wizard?"
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