class ConnectionsController < ApplicationController
  def index
    render json: Connection.all
  end

  def create
    @connection = Connection.create(connection_params)
    render json: @connection
  end

  private

  def connection_params
      params.permit(:follower_id, :followee_id)
  end


end
