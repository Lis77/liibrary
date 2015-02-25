class ItemsController < ApplicationController

	def index
		@items = Item.all
	end

	def new
		@item = Item.new
	end

	def edit
		@item = Item.find(params[:id])
	end

	def create
    @item = Item.new(entry_params)
    if @item.save
      @item.image_fetcher
      redirect_to items_path
    else
      render :new
    end
  end

  def update
    @item = Item.find(params[:id])

    if @item.update_attributes(item_params)
      @item.image_fetcher
      redirect_to items_path
    else
      render :edit
    end
  end

  def destroy
    @item = Item.find(params[:id])
    @item.destroy
    redirect_to items_path
  end
end








