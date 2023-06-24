class AddExamForeignKeyConstraintToUsers < ActiveRecord::Migration[7.0]
  def change
    add_foreign_key :users, :exams
  end
end
