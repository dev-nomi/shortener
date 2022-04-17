class ShortLinkController < ApplicationController
  
  def index
    links = ShortLink.all
    render json: links, status: 200
  end

  def show
    link = ShortLink.find_by_stub(params[:stub])
    redirect_to link.long_url, status: 301
  end

  def create
    link = ShortLink.new(short_link_params)

    if link.save
      render json: link, status: 200
    else
      render json: link.errors.full_messages , status: 400
    end
  end

  private

  def short_link_params
    params.require(:short_link).permit(:long_url, :name)
  end

end