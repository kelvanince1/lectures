class CreateTodos < ActiveRecord::Migration[5.0]
  def change
    create_table :todos do |t|
      t.string :task
      t.boolean :completed
      t.belongs_to :user, foreign_key: true

      t.timestamps
    end
  end
end
