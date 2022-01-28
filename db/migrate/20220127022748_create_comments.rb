class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.text :content, NULL: false 
      t.references :user, NULL: false, foreign_key: true
      t.references :prototype, NULL: false, foreign_key: true
      t.timestamps
    end
  end
end
