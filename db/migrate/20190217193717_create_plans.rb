class CreatePlans < ActiveRecord::Migration[5.2]
  def change
    create_table :plans do |t|
      t.string :yourplan
      t.string :place
      t.date :date

      t.timestamps
    end
  end
end
