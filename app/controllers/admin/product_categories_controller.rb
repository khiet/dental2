module Admin
  class ProductCategoriesController < AdminsController

    # GET /product_categories
    def index
      @product_categories = ProductCategory.all
    end

    # GET /product_categories/1
    def show
      @product_category = ProductCategory.find(params[:id])
    end

    # GET /product_categories/new
    def new
      @product_category = ProductCategory.new
    end

    # GET /product_categories/1/edit
    def edit
      @product_category = ProductCategory.find(params[:id])
    end

    # POST /product_categories
    def create
      @product_category = ProductCategory.new(product_category_params)

      if @product_category.save
        redirect_to admin_product_categories_path(@product_category), notice: 'Product category was successfully created.'
      else
        render action: "new"
      end
    end

    # PUT /product_categories/1
    def update
      @product_category = ProductCategory.find(params[:id])

      if @product_category.update(product_category_params)
        redirect_to admin_product_categories_path(@product_category), notice: 'Product category was successfully updated.'
      else
        render action: "edit"
      end
    end

    # DELETE /product_categories/1
    def destroy
      @product_category = ProductCategory.find(params[:id])
      @product_category.destroy

      redirect_to admin_product_categories_url
    end

    private

    def product_category_params
      params.require(:product_category).permit!
    end
  end
end
