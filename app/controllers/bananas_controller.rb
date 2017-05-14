class BananasController < ApplicationController

  def index
    @bananas = Banana.all
    render "index.html.erb"
  end

  def new
    render "new.html.erb"
  end

  def create
    @banana = Banana.create(price: params[:price], color: params[:color], actually_plantain: params[:actually_plantain])
    render "create.html.erb"
  end

  def show
    @banana = Banana.find_by(id: params[:id])
    render "show.html.erb"
  end

  def edit
    @banana = Banana.find_by(id: params[:id])
    render "edit.html.erb"
  end

  def update
    @banana = Banana.find_by(id: params[:id])
    @banana.update(price: params[:price], color: params[:color], actually_plantain: params[:actually_plantain])
    render "update.html.erb"
  end


  def destroy
    Banana.find_by(id: params[:id])
    render "destroy.html.erb"
  end

end
