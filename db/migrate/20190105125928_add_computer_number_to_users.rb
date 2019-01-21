class AddComputerNumberToUsers < ActiveRecord::Migration
  def self.up
    add_column :users, :student_number, :integer
  end
  def self.down
    add_column :users, :student_number, :integer
  end
end
