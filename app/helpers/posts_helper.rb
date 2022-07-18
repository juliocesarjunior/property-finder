module PostsHelper
	def post_thumbnail_url post
		post.image.present? ? post.image.big.url : "placeholder.jpg"
	end
end
