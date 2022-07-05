module PropertiesHelper

	def property_thumbnail property
		img = property.photo.present? ? property.photo.big.url : "app/assets/placeholder.png"
		image_tag img, class: "property-thumb"
	end
	def property_photo_url property
		img = property.photo.present? ? property.photo.url : asset_url("placeholder.png")
	end
end
