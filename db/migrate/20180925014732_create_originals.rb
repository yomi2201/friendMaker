class CreateOriginals < ActiveRecord::Migration[5.2]
  def change
    create_table :originals do |t|
      t.integer :question_id
      t.string :ori_question, default: "", null: false

      t.timestamps
    end
  end
end
