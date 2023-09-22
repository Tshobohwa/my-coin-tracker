class CreateJoinTableCategoriesExpenses < ActiveRecord::Migration[7.0]
  def change
    create_join_table :categories, :expenses do |t|
      t.index %i[expense_id category_id]
      t.index %i[category_id expense_id]
    end
  end
end
