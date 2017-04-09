class AddSubjectReferencesToMarks < ActiveRecord::Migration[5.0]
  def change
    add_reference :marks, :subject, foreign_key: true
  end
end
