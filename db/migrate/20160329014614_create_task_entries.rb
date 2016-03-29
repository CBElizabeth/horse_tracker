class CreateTaskEntries< ActiveRecord::Migration
  def change
    create_table :task_entries do |t|
      t.belongs_to :user, index: true
      t.belongs_to :task, index: true
      t.time :start_time
      t.time :stop_time


      t.timestamps null: false
    end
  end
end
