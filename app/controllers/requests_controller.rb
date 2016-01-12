class RequestsController < ApplicationController
  def create
    submission = params[:request]
    requester = submission[:requester]
    location = submission[:location]
    item_number = submission[:item_number]
    description = submission[:description]
    Request.create(:requester => requester,
                    :location => location,
                    :item_number => item_number,
                    :description => description
      )
  end

  def main
    @requests = Request.all
    @request = Request.new
  end
end
