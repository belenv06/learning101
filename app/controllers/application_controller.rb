class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  #cada vez que quiera cambiar la redireccion, luego de iniciar sesión. Crear el metodo y poner la ruta correspondiente.
  def after_sign_in_path_for(resource)
    prospects_path
  end
end
