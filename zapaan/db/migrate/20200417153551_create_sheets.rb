class CreateSheets < ActiveRecord::Migration[5.2]
  def change
    create_table :sheets do |t|
      t.string :content
      t.datetime :time

      t.timestamps
    end
  end
end
