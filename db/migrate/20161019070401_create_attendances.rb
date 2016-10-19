class CreateAttendances < ActiveRecord::Migration
  def change
    create_table :attendances, id: false do |t|
      t.datetime :time_in
      t.datetime :time_out
      t.boolean :on_leave
      t.text :leave_reason
      t.integer :approved_by
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
    add_index :attendances, :time_in
    add_index :attendances, :time_out
  end
end
