class DropStudents < ActiveRecord::Migration
  def up
    drop_table :students
  end

  def down
    create_table :students, force: true do |t|
      t.string   :nick
      t.datetime :created_at
      t.datetime :updated_at
      t.string   :email,                  default: "", null: false
      t.string   :encrypted_password,     default: "", null: false
      t.string   :reset_password_token
      t.datetime :reset_password_sent_at
      t.datetime :remember_created_at
      t.integer  :sign_in_count,          default: 0
      t.datetime :current_sign_in_at
      t.datetime :last_sign_in_at
      t.string   :current_sign_in_ip
      t.string   :last_sign_in_ip
    end

    add_index "students", ["email"], name: "index_students_on_email", unique: true, using: :btree
    add_index "students", ["reset_password_token"], name: "index_students_on_reset_password_token", unique: true, using: :btree
  end
end
