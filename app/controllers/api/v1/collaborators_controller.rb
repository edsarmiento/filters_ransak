module Api::V1
  class CollaboratorsController < ActionController::API
    def index
      @q = Collaborator.ransack(params[:q] || {})
      @collaborators = @q.result
      render json: @collaborators
    end

    def show
      @collaborator = Collaborator.find_by(uuid: params[:id])
      render json: @collaborator
    end
  end
end