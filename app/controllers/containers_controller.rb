class ContainersController < ApplicationController
  def new
    @container = Container.new
  end

  def create
    @container = Container.new(container_params)
    @container.user = current_user
  end

  def edit
    @container = Container.find(params[:id])
  end

  def update
  end

  def destroy
    @container.destroy
  end

  private
  def container_params
    params.require(:container).permit(:card_category)
  end

end