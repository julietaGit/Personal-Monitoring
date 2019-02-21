class CreateProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :projects do |t|
      t.string :pname
      t.date :start
      t.date :completed

      t.timestamps
    end
  end
end
