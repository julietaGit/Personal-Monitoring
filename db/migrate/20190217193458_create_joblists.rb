class CreateJoblists < ActiveRecord::Migration[5.2]
  def change
    create_table :joblists do |t|
      t.string :company
      t.string :interviewer
      t.string :interview
      t.string :test
      t.datetime :date
      t.string :result

      t.timestamps
    end
  end
end
