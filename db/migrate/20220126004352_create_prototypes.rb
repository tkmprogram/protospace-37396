class CreatePrototypes < ActiveRecord::Migration[6.0]
  def change
    create_table :prototypes do |t|
      t.string       :title,      NULL: false
      t.text         :catch_copy, NULL: false
      t.text         :concept,    NULL: false
      t.references   :user,       NULL: false, foreign_key: true
      t.timestamps
    end
  end
end
