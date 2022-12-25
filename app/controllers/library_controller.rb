class LibraryController < ApplicationController
  def showall
  end

  def mybooks
    @cur_id = current_user.id
    @mybooks = Book.where(user_id: current_user.id)
    p "books found"
    p @mybooks
  end
end
