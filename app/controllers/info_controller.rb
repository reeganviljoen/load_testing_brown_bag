class InfoController < ApplicationController
  def index
    sleep(40.second)
    @info = Info.all
  end
end
