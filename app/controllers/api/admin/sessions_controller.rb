class Api::Admin::SessionsController < Devise::SessionsController
  # before_action :authenticate!, only: :testowo
  respond_to :json

  private

  def respond_with(resource, _opts = {})
    render json: resource
  end

  def respond_to_on_destroy
    head :no_content
  end
end