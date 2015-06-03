module CategoriesHelper

  def list_category_for_select_box
    Category.all.order(m_name: :asc).map { |c| ["#{c.m_name}", c.id] }
  end

end
