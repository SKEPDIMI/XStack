class SessionsController < Devise::SessionsController
  def create
    self.resource = warden.authenticate!(auth_options)
    yield resource if block_given?
    respond_with resource, location: after_sign_in_path_for(resource)
  end
  private

  def respond_with(resource, _opts = {})
    render json: resource
  end

  def response_to_on_destroy
    head :no_content
  end
end
