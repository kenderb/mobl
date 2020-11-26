class AddTimestampToArticles < ActiveRecord::Migration[6.0]
  def change
    add_column :articles, :created_at, :datetimme
    add_column :articles, :updated_at, :datetimme
  end
end
