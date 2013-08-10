class InitDatabase < ActiveRecord::Migration
  def change
    create_table :projects, force: true do |t|
      t.string  :title, null: false
      t.text    :description, limit: 1024
      t.boolean :archived, null: false, default: false
      t.timestamps
    end
    create_table :tasks, force: true do |t|
      t.string   :subject, null: false
      t.text     :content, limit: 1024
      t.string   :status, null: false
      t.boolean  :urgent, null: false, default: false
      t.integer  :project_id, null: false
      t.integer  :author_id
      t.integer  :assignee_id
      t.integer  :reviewer_id
      t.datetime :start_at
      t.datetime :completed_at
      t.datetime :due_to
      t.timestamps
    end

    create_table :comments, force: true do |t|
      t.integer :task_id, null: false
      t.integer :author_id, null: false
      t.text    :content, limit: 1024
    end
  end
end
