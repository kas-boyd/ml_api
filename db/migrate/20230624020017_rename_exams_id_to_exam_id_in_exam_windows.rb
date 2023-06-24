class RenameExamsIdToExamIdInExamWindows < ActiveRecord::Migration[7.0]
  def change
    rename_column :exam_windows, :exams_id, :exam_id
  end
end
