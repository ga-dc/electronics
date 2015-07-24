class CreateBorrowings < ActiveRecord::Migration
  def change
    create_table :borrowings do |t|
      t.string :name
      t.string :email
      t.string :course
      t.datetime :due_date
      t.references :item
    end
  end
end
