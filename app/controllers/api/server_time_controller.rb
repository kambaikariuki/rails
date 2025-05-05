module Api
  class ServerTimeController < ApplicationController
    
    def server_time
      time = Time.current()
      render json: { data: {time: time} }
    end
  end
end