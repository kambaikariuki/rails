module Api
  class ServerTimeController < ApplicationController
    
    def server_time
      time = Time.current()
      render json: { data: {time: time} }, status: :ok
    end
  end
end