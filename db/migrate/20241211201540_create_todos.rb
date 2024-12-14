class CreateTodos < ActiveRecord::Migration[8.0]
  def change
    create_table :todos do |t|
      t.string :title
      t.boolean :status
      t.text :description
      t.datetime :ends_at

      t.timestamps
    end
  end
end
