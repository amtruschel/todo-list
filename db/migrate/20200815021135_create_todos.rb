class CreateTodos < ActiveRecord::Migration[6.0]
  def change
    create_table :todos do |t|
      t.string :description, required: true
      t.boolean :completed, default: false
      t.timestamps null: false
    end
  end
end
