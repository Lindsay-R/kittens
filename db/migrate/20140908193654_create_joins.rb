class CreateJoins < ActiveRecord::Migration
  def change
    create_table :joins do |t|
      t.integer :kitten_id
      t.integer :category_id
    end
  end
end
