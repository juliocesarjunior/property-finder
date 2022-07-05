module PropertiesHelper

	def property_thumbnail property
		img = property.photo.present? ? property.photo.big.url : "app/assets/placeholder.png"
		image_tag img, class: "property-thumb"
	end
end
