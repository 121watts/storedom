class Api::Controller<ApplicationController
  def is_admin?
    if params[:admin] != 'true'
      render file: '/public/401.html', status: :unauthorized
    end
  end
end
