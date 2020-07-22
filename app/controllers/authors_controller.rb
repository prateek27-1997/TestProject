class AuthorsController < ApplicationController
before_action :authenticate_author!, except: [:index]
  def index
    @authors = Author.all
  end

  def edit
    @author = Author.find(params[:id])
  end

  def update
    @author = Author.find(params[:id])
    if @author.update(author_params)
      flash[:success] = t('updated_successfuly')
      redirect_to authors_path(@author)
    else
      render :edit
    end
  end

  def destroy
    @author = Author.find(params[:id])
    @author.destroy
  end

  private
    def author_params
      params.require(:author).permit(:email, :first_name, :last_name, :date_of_birth, :password, :api_key, :password_confirmation)
    end
end
