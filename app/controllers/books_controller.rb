class BooksController < ApplicationController
  before_action :set_book, only: [ :show, :edit, :update, :destroy ]
  def index
    @books = Book.all
  end
  def show
  end
  def new
    @book = Book.new
  end
  def create
    @book = Book.new(book_params)
    if @book.save
      redirect_to books_url
    else
      render "new", status: :unprocessable_entity
    end
  end
  def edit
  end
  def update
    if @book.update(book_params)
      redirect_to book_url(@book)
    else
      render "edit", status: :unprocessable_entity
    end
  end
  def destroy
    @book.destroy
    redirect_to books_url
  end

  private
  def book_params
    params.require(:book).permit(:title, :description, :bookmark, :pages, :read)
  end
  def set_book
    @book = Book.find(params[:id])
  end
end
