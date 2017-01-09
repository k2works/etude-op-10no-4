class IndexController < ApplicationController
  get '/' do
    title "Example Page"
    render :html, :index
  end
end
