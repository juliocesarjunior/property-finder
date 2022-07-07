module PropertiesHelper

	def property_thumbnail property
		img = property.photo.present? ? property.photo.big.url : "placeholder.png"
		image_tag img, class: "property-thumb"
	end

	def property_thumbnail_url property
		property.photo.present? ? property.photo.big.url : "placeholder.png"
	end
	def property_photo_url property
		img = property.photo.present? ? property.photo.url : "placeholder.png"
	end
end
