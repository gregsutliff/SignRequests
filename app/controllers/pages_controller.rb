class PagesController < ApplicationController
  def main
    @requests = Request.all
  end
end
