class Category < ActiveRecord::Base	

	# ====================================================================================
	# ATTRIBUTES - PLACE
	# ====================================================================================


	# ====================================================================================
	# ASSOCIATIONS 
	# ====================================================================================
	belongs_to :user
	belongs_to :parent, class_name: "Category", foreign_key: "parent_id"
	# belongs_to :user

	
	has_many :sub_catgories, class_name: "Category", foreign_key: "parent_id"
	has_many :products
	has_many :photos, as: :photoable

	# ====================================================================================
	# VALIDATES 
	# ====================================================================================


	# ====================================================================================
	# STATIC 
	# ====================================================================================
	STATUS     = { pending: 0, active: 1, inactive: 2, deleted: 3 }

	# ====================================================================================
	# SCOPES 
	# ====================================================================================

	scope :main    , -> { where(parent_id: nil)}

	scope :pending , -> { where(m_status: STATUS[:pending])}
	scope :active  , -> { where(m_status: STATUS[:active])}
	scope :inactive, -> { where(m_status: STATUS[:inactive])}
	scope :deleted , -> { where(m_status: STATUS[:deleted])}

	# ====================================================================================
	# INSTANCE - GET - FUNTIONS
	# ====================================================================================

	def badge_number
		result = self.sub_catgories_active_product_total_count(0)
		result
	end

	def badge_number_for_sub_categories 
		result = self.active_sub_catgories_product_total_count(0)
		result
	end

	def active_product_count
		self.products.active.count
	end

	def active_sub_categories_count
		self.sub_catgories.active.count
	end

	def sub_catgories_active_product_total_count current_count_number
		self.sub_catgories.active.each do |sub_category|
			current_count_number = sub_category.sub_catgories_active_product_total_count current_count_number
		end
		current_count_number += self.active_product_count
		current_count_number
	end

	def active_sub_catgories_product_total_count current_count_number
		self.sub_catgories.active.each do |sub_category|
			current_count_number = sub_category.active_sub_catgories_product_total_count current_count_number
		end
		current_count_number += self.active_sub_categories_count
		current_count_number
	end

	# ====================================================================================
	# INSTANCE - TODO - FUNTIONS
	# ====================================================================================


	# ====================================================================================
	# INSTANCE - FIND - FUNTIONS
	# ====================================================================================


	# ====================================================================================
	# INSTANCE - CHECK - FUNTIONS
	# ====================================================================================


	# ====================================================================================
	# CLASS - GET - FUNTIONS
	# ====================================================================================


	# ====================================================================================
	# CLASS - TODO - FUNTIONS
	# ====================================================================================


	# ====================================================================================
	# CLASS - FIND - FUNTIONS
	# ====================================================================================


	# ====================================================================================
	# CLASS - CHECK - FUNTIONS
	# ====================================================================================


	# ====================================================================================
	# CALLBACK - FUNTIONS
	# ====================================================================================


	# ====================================================================================
	# PROTECTED - FUNTIONS
	# ====================================================================================


	# ====================================================================================
	# PRIVATE - FUCTIONS
	# ====================================================================================

end
