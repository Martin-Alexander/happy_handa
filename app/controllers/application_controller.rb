class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception

    def happy_handa
        render html: "hi, handa"
    end
end
