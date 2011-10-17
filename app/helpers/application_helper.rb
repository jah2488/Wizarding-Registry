module ApplicationHelper

  def present(object, klass = nil)
    klass ||= "#{object.class}Presenter".constantize
    presenter = klass.new(object, self)
    yield presenter if block_given?
    presenter
  end


  def current_url(overwrite={})
    url_for :only_path => false, :params => params.merge(overwrite)
  end

  def has_permission?
    if current_user
      if current_user.id == @user.id
        true
      else
        false
      end
    else
      false
    end
  end


end
