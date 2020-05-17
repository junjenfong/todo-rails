class CreateTodos < ActiveRecord::Migration[6.0]
  def change
    create_table :todos do |t|
      t.string :title, null:false
      t.string :body, null:false
      t.boolean :is_active, :default => true
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
