module Admin
  class ProductsController < AdminsController

    # GET /products
    def index
      @products = Product.all
    end

    # GET /products/1
    def show
      @product = Product.find(params[:id])
    end

    # GET /products/new
    def new
      @product = Product.new
    end

    # GET /products/1/edit
    def edit
      @product = Product.find(params[:id])
    end

    # POST /products
    def create
      @product = Product.new(product_params)

      if @product.save
        redirect_to admin_product_path(@product), notice: 'Product was successfully created.'
      else
        render action: "new"
      end
    end

    # PUT /products/1
    def update
      @product = Product.find(params[:id])
      if @product.update(product_params)
        redirect_to admin_product_path(@product), notice: 'Product was successfully updated.'
      else
        render action: "edit"
      end
    end

    # DELETE /products/1
    def destroy
      @product = Product.find(params[:id])
      @product.destroy

      redirect_to admin_products_url
    end

    private

    def product_params
      params.require(:product).permit!
    end
  end
end
