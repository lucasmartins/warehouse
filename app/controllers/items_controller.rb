class ItemsController < ApplicationController
  def entrada
<<<<<<< HEAD
    @items = Item.recently_created
=======
    @items = Item.all
>>>>>>> d5fc010fe55c4d6d0407d92f613f0420d127255e
  end

  def saida
  end

  def create
    item=Item.new
    product = Product.where('barcode'=>params['barcode']).first
    item.product=product
    item.user=User.first
    item.save
    render :text=>'true',:layout=>nil
  end
<<<<<<< HEAD

  def fast_mode
    
    if params['fast_mode']=='checked'
      session['fast_mode']=true
    else
      session['fast_mode']=false
    end
    render :text=>'true',:layout=>nil
  end
=======
>>>>>>> d5fc010fe55c4d6d0407d92f613f0420d127255e
end
