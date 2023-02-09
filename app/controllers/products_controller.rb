class ProductsController < ApplicationController
    def new
        @product = Product.new
    end

    def index
        @products = Product.all
    end

    def create
        @product = Product.new(product_params)
        if @product.save
            puts "Data saved!"
            flash[:notice] = "Product added successfully"
            redirect_to product_path(@product)
        else
            puts "Data not saved"
            render :new, status: :unprocessable_entity
        end
    end

    def show
        @product = Product.find(params[:id])
    rescue StandardError => e
        render "not_found/404"
    end

    def edit
        @product = Product.find(params[:id])

    rescue StandardError => e
        render "not_found/404"
    end

    def update
        @product = Product.find(params[:id])
        if @product.update(product_params)
            puts "Data saved!"
            flash[:notice] = "Product updated successfully"
            redirect_to product_path(@product)
        else
            puts "Data not saved"
            render :edit, status: :unprocessable_entity
        end

    rescue StandardError => e
        render "not_found/404"
    end

    def destroy
        @product = Product.find(params[:id])
        id = @product.id
        @product.destroy
        flash[:notice] = "Product with id #{id} deleted successfully"
        redirect_to "index"

    rescue StandardError => e
        flash[:notice] = "Error: Product not found"
        render "index"
    end

    private
    def product_params
        params.require(:product).permit(:name, :description)
    end

end