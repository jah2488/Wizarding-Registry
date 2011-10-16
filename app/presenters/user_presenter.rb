class UserPresenter

	def initialize(user, template)
		@user = user
		@template = template
	end

	def h
		@template
	end

private

	def avatar_name
		if @user.pet.present?
			@user.pet
		else
		   "default.png"
		end
	end
end