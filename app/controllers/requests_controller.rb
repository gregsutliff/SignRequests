class RequestsController < ApplicationController
  def create
    @requests = Request.order(created_at: :desc)
    Request.create(request_params)
    respond_to do |format|
      format.html
      format.json
      format.js
    end
    
  end

  def main
    @requests = Request.order(created_at: :desc)
    @request = Request.new
    respond_to do |format|
      format.html
      format.json
      format.js
    end
    
  end

  def update
    request = Request.find(params[:id])
    request.fulfilled_on = params[:fulfilled_on]
    request.save
    @requests = Request.order(created_at: :desc)
    @request = Request.new
    respond_to do |format|
      format.html
      format.json
      format.js
    end
  end
  

  private

    def request_params
      params.require(:request).permit(:requester, :location, :item_number, :sign_type, :description, :fulfilled_on)
    end
end
