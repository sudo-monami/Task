class AddColumnToTask < ActiveRecord::Migration[5.2]
  def change
    add_column :tasks, :explanation, :text
    add_column :tasks, :start_work, :date
    add_column :tasks, :end_work_prospect, :date
    add_column :tasks, :end_work, :date
    add_column :tasks, :priority, :string
    add_column :tasks, :status, :string
  end
end
