class CreateSheets < ActiveRecord::Migration[5.2]
  def change
    create_table :sheets do |t|
      t.string :content
      t.integer :count
      t.datetime :start_time
      t.datetime :current_time
      t.datetime :finish_time
      t.datetime :deleted_at
      t.index :deleted_at

      t.timestamps
    end
  end
end
