class CreateSubOneComments < ActiveRecord::Migration
  def change
    create_table :sub_one_comments do |t|
      t.text :body
      t.references :user, index: true, foreign_key: true
      t.string :sub_
      t.references :sub_comment, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
