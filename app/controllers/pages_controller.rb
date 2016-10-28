class PagesController < ApplicationController
    def index
        route_to_redirect = if user_signed_in?
                                user_path(current_user)
                            else
                                new_user_session_path
                            end
        redirect_to(route_to_redirect)
    end
end

#current_user #Devuelve un usuario con sesion activa
#user_signed_in? #true7flase si esta logeado

