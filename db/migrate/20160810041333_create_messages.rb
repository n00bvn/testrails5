class CreateMessages < ActiveRecord::Migration[5.0]
  def change
    create_table :messages do |t|
      t.text :content
      t.string :username
      t.references :chatroom, foreign_key: true

      t.timestamps
    end
  end
end
