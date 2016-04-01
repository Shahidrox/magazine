class CreateSubComments < ActiveRecord::Migration
  def change
    create_table :sub_comments do |t|
      t.text :body
      t.references :user, index: true, foreign_key: true
      t.references :comment, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
