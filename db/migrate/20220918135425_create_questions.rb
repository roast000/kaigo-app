class CreateQuestions < ActiveRecord::Migration[6.0]
  def change
    create_table :questions do |t|
      t.string     :question_text,      null: false
      t.integer    :kaigo_category_id,  null: false
      t.references :user,               null: false,foreign_key: true
      t.timestamps
    end
  end
end
