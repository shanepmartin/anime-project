class CreateQuotes < ActiveRecord::Migration[7.0]
  def change
    create_table :quotes do |t|
      t.integer :user_id
      t.string :quote
      t.string :link
    end
  end
end
