class CreateQuestions < ActiveRecord::Migration[5.2]
  def change
    create_table :questions do |t|
      t.integer :q_number, null: false, default: 0
      t.integer :user_a_id
      t.integer :user_q_id
      t.boolean :delete_flag

      t.timestamps
    end
  end
end
