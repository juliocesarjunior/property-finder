module ApplicationHelper
	def profile_picture account
		thumb = account.image.present? ? account.image.thumb.url : "profile.jpg"
		image_tag thumb, class: "profile-pic img-circle"
	end

end
