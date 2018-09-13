class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception

    # サインイン後のリダイレクト先をマイページへ
    def after_sign_in_path_for(resource)
        user_path(current_user.id)  #　指定したいパスに変更
    end

    # サインアウト後のリダイレクト先をトップページへ
    def after_sign_out_path_for(resource)
        root_path
    end
end
