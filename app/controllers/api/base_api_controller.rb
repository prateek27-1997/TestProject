module Api
  class BaseApiController < ActionController::API
    before_action :authenticate!

    private
    def authenticate!
      if Author.find_by(api_key: request.headers['Authorization'])
        return true
      else
        render json: {message: I18n.t('unauthorized') }, status: :unauthorized
      end
    end
  end
end
