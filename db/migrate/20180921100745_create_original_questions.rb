class CreateOriginalQuestions < ActiveRecord::Migration[5.2]
  def change
    create_table :original_questions do |t|
      t.integer :question_id
      t.string :original_question

      t.timestamps
    end
  end
end
