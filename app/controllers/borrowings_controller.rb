class BorrowingsController < ApplicationController
  def new
    @item = Item.find(params[:item_id])
    @borrowing = @item.borrowings.new
  end
  def create
    @item = Item.find(params[:item_id])
    @borrowing = Borrowing.new(borrowing_params)
    if @borrowing.save
      redirect_to item_borrowing_path(@item, @borrowing)
    end
  end
  def show
    @item = Item.find(params[:item_id])
    @borrowing = Borrowing.find(params[:id])
  end

  private
  def borrowing_params
    params.require(:borrowing).permit(:name, :email, :course, :due_date)
  end
end
