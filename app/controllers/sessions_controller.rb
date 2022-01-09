class SessionsController < ApplicationController

    def create 
        if auth 
            byebug
        end
    end

    private 
        def auth
            request.env['omniauth.auth']
        end
end