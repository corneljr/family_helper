class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :title, null: false
      t.boolean :completed, default: false
      t.datetime :due_date
      t.integer :priority, default: 5

      t.timestamps
    end
  end
end
