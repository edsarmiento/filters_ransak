class CollaboratorsController < ActionController::API
  def index
    @q = Collaborator.ransack(params[:q] || {})
    @collaborators = @q.result
    render json: @collaborators
  end  
end