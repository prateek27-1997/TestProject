class BooksController < ApplicationController
before_action :authenticate_author!, except: [:index]
  def index
    @books = Book.all
  end

  def new
    @book = current_author.books.build
  end
 
  def create
    @book = current_author.books.build(book_params)
    if @book.save
      flash[:success] = t('created_successfully')
      redirect_to books_path(@book)
    else
      render :new
    end
  end

  def edit
    @book = Book.find(params[:id])
  end

  def update
    @book = Book.find(params[:id])
    if @book.update(book_params)
      flash[:success] = t('updated_successfuly')
      redirect_to books_path(@book)
    else
      render :edit
    end
  end

  def destroy
    @book = Book.find(params[:id])
    @book.destroy
  end

  private
    def book_params
      params.require(:book).permit(:author_id, :book_title)
    end
end
