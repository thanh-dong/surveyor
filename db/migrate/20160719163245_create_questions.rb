class CreateQuestions < ActiveRecord::Migration[5.0]
  def change
    create_table :questions do |t|
      t.string :title
      t.references :survey, foreign_key: true
      t.string :type

      t.timestamps
    end
  end
end
