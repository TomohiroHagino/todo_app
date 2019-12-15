class CreateTodos < ActiveRecord::Migration[5.2]
  def change
    create_table :todos do |t|
      t.string :content
      t.references :goal, foreign_key: true
      t.integer :position
      t.boolean :done, null: false, default: false

      t.timestamps
    end
  end
end
