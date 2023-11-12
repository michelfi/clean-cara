class AddForeignKeyToPosts < ActiveRecord::Migration[7.0]
  def change
    def change
      add_foreign_key :posts, :users, column: :user_id
    end
  end
end
