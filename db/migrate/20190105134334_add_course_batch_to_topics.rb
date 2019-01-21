class AddCourseBatchToTopics < ActiveRecord::Migration
  def self.up
    add_column :topics, :course_and_batch, :string, limit: 256
  end
  def self.down
    add_column :topics, :course_and_batch, :string, limit: 256
  end
end
