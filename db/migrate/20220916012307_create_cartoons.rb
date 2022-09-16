class CreateCartoons < ActiveRecord::Migration[7.0]
  def change
    create_table :cartoons do |t|
      t.string :name
      t.string :description
      t.string :link1
      t.string :link2
      t.string :link3
      t.string :image
    end
  end
end
