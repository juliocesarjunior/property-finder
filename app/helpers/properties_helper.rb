module PropertiesHelper

	def property_thumbnail property
		img = property.photo.present? ? property.photo.url : "placeholder.png"
		image_tag img, class: "property_thumb"
	end
end
