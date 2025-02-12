module Api::V1
  class CollaboratorsController < ActionController::API
    def index
      @q = Collaborator.ransack(params[:q] || {})
      @collaborators = @q.result
      render json: @collaborators
    end  
  end
end