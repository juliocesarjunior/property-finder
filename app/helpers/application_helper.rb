module ApplicationHelper
	def profile_picture account
		thumb = account.image.present? ? account.image.thumb.url : "profile.jpg"
		image_tag thumb, class: "profile-pic img-circle"
	end

	def flash_class(level)
		bootstrap_alert_class = {
			"success" => "alert-success",
			"error" => "alert-danger",
			"notice" => "alert-info",
			"alert" => "alert-danger",
			"warn" => "alert-warning"
		}
		bootstrap_alert_class[level]
	end

end
