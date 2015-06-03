module ProductsHelper

	def product_babge_class number
		if number < 7
			"badge-default"
		elsif number < 30
			"badge-info"
		elsif number < 40
			"badge-warning"
		else
			"badge-success"
		end
	end

end
