class ApplicationController < ActionController::Base
  def main
    render json: { "status": 'ok' }
  end
end
