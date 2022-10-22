class AddReviewToLists < ActiveRecord::Migration[7.0]
  def change
    add_column :lists, :review, :float, default: 0, null: false
  end
end
