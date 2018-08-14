class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string           :name
      t.string           :title
      t.datetime         :date_time
      t.string           :content
      t.integer          :user_id
      t.timestamps
    end
  end
end
