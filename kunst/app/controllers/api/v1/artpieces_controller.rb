class Api::V1::ArtpiecesController < Api::V1::BaseController

  def index
    respond_with Artpiece.all
  end

  def create
    respond_with :api, :v1, Artpiece.create(artpiece_params)
  end

  def destroy
    respond_with Artpiece.destroy(params[:id])
  end

  def update
    artpiece = Artpiece.find(params["id"])
    artpiece.update_attributes(artpiece_params)
    respond_with artpiece, json: artpiece
  end

  private

  def item_params
    params.require(:artpiece).permit(:id, :name, :description)
  end
end