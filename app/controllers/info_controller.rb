class InfoController < ApplicationController
  def index
    sleep(2.second)
    @info = Info.all
  end
end
