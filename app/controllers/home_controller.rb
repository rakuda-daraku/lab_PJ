class HomeController < ApplicationController
  def index
    @book = Book.new
  end

  def upload
    @book = Book.new
    Book.create(book_params)
    render :template => 'home/index'
  end

  private

  def book_params
    params.require(:book).permit(:image)
  end
end
