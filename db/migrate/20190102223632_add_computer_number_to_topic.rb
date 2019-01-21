class AddComputerNumberToTopic < ActiveRecord::Migration
  def self.up
    add_column :topics, :student_number, :integer
  end
  def self.down
    add_column :topics, :student_number, :integer
  end
end
