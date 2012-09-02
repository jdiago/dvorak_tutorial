class AddSequenceToLessons < ActiveRecord::Migration
  def change
    add_column :lessons, :sequence, :integer
  end
end
