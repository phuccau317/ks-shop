class PagesController < ApplicationController
  def index
    @main_categories = Category.main
  end

  def contact_us
  end

  def term_and_conditions
  end

  def help
  end
end
