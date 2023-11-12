class CreateSubscribers < ActiveRecord::Migration[7.0]
  def change
    create_table :subscribers do |t|
      t.string :name
      t.string :surname
      t.string :email
      t.string :category

      t.timestamps
    end
  end
end
