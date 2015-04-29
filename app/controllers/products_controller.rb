class ProductsController < ApplicationController
  def index
    @products = Product.order(:name)
    respond_to do |format|
      format.html
      format.csv { send_data @products.to_csv }
      format.xls # { send_data @products.to_csv(col_sep: "\t") }
    end
  end
  
  def import
    Product.import(params[:file])
    redirect_to root_url, notice: "Products imported"
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(params[:product])
    if @product.save
      redirect_to products_path, :notice => "your info was saved"
    else
      render "new"
    end
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    redirect_to products_path, :notice => "your post has been deleted!"
  end

  def search
    parameters = { term: params[:term], limit: 16 }
    render json: Yelp.client.search('San Francisco', parameters)
  end

end
