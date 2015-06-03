class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update, :destroy], except: [:add_attribute]

  # GET /products
  # GET /products.json
  def index
    @products = Product.all
  end

  # GET /products/1
  # GET /products/1.json
  def show
  end

  # GET /products/new
  def new
    @product = Product.new
  end

  # GET /products/1/edit
  def edit
  end

  # POST /products
  # POST /products.json
  def create
    @product = Product.new(product_params)

    respond_to do |format|
      if @product.save
        flash[:success] = t("success.product_created")
        @flash = flash
        format.html { redirect_to edit_user_registration_path }
        format.js
      else
        format.html { render action: 'new' }
        format.js
      end
    end
  end

  # PATCH/PUT /products/1
  # PATCH/PUT /products/1.json
  def update
    respond_to do |format|
      if @product.update(product_params)
        flash[:success] = t("success.product_updated")
        @flash = flash
        format.html { redirect_to edit_user_registration_path }
        format.js
      else
        format.html { redirect_to edit_user_registration_path }
        format.js
      end
    end
  end

  # DELETE /products/1
  # DELETE /products/1.json
  def destroy
    @product.destroy
    respond_to do |format|
      format.html { redirect_to products_url }
      format.json { head :no_content }
    end
  end

  def add_attribute
    respond_to do |format|
      format.html { redirect_to :back }
      format.js
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product
      @product = Product.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def product_params
      params.require(:product).permit(
        :m_name, :m_description, :m_price, :m_sale_price, :m_weight, 
        :m_length, :m_width, :m_height, :m_attributes, 
        :parent_id, :category_id, :user_id)
    end
end
