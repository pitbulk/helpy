class AddCourseBatchToUsers < ActiveRecord::Migration
  def self.up
    add_column :users, :course_and_batch, :string, limit: 256
  end
  def self.down
    add_column :users, :course_and_batch, :string, limit: 256
  end
end
