class CreateTasks < ActiveRecord::Migration[5.1]
  def change
    create_table :tasks do |t|
      t.references :user, foreign_key: true
      t.references :todo, foreign_key: true
      t.boolean :complete

      t.timestamps
    end
  end
end
