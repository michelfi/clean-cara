class CreateSubscribersCategoriesJoinTable < ActiveRecord::Migration[7.0]
  def change
    create_join_table :subscribers, :categories do |t|
      # t.index [:subscriber_id, :category_id]
      # t.index [:category_id, :subscriber_id]
    end
  end
end
