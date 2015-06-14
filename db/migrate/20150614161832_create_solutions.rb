class CreateSolutions < ActiveRecord::Migration
  def change
    create_table :solutions do |t|
      t.string :author
      t.text :body
      t.string :category
      t.references :problem, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
