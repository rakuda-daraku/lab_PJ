class HomeController < ApplicationController
  def index
    @book = Book.new
  end

  def upload
    @book = Book.new
    @book.tate(book_params[:val])
    @book.yoko(book_params[:vec])
    Book.create(book_params)
    render :template => 'home/index'
  end

  private

  def book_params
    params.require(:book).permit(:image, :val, :vec)
  end
end
