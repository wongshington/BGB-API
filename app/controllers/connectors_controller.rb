class ConnectorsController < ApplicationController
  before_action :set_connector, only: [:show, :update, :destroy]

  # GET /connectors
  def index
    @connectors = Connector.all

    render json: @connectors
  end

  # GET /connectors/1
  def show
    render json: @connector
  end

  # POST /connectors
  def create
    @connector = Connector.new(connector_params)

    if @connector.save
      render json: @connector, status: :created, location: @connector
    else
      render json: @connector.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /connectors/1
  def update
    if @connector.update(connector_params)
      render json: @connector
    else
      render json: @connector.errors, status: :unprocessable_entity
    end
  end

  # DELETE /connectors/1
  def destroy
    @connector.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_connector
      @connector = Connector.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def connector_params
      params.fetch(:connector, {})
    end
end
