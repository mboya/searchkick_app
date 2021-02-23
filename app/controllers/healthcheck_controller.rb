class HealthcheckController < ApplicationController

  def quick
    render json: { status: "OK", version: 0.1 }, status: :ok
  end
  
end
