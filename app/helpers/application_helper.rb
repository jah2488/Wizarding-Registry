module ApplicationHelper

  def current_url(overwrite={})
    url_for :only_path => false, :params => params.merge(overwrite)
  end

  def has_permission?
    if current_user.id == @user.id
      true
    else
      false
    end
  end


end
