module Api
  class AuthorsController < BaseApiController
    def show
      author = Author.find([:id])
      render json: author, adapter: :json, status: 201
    end
  end
end