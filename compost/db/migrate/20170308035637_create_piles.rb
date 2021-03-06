class CreatePiles < ActiveRecord::Migration[5.0]
  def change
    create_table :piles do |t|
      
      t.references :user, foreign_key: true
      t.text :content
      t.timestamps
    end
    add_index :piles, [:user_id, :created_at]
  end
end
