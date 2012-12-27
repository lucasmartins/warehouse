class ProductsController < ApplicationController
  def index
    @products = Product.all
    @amount_types = AmountType.all
  end

  def create
    
    product=Product.new
    product.name=params['name']
    product.barcode=params['barcode']
    product.amount=params['amount']
    product.amount_type=AmountType.find(params['amount_type'])
    product.save
    render :text=>'true',:layout=>nil
  end
end
