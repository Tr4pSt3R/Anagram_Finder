class AddTimeToAnagrams < ActiveRecord::Migration
  def change
    add_column :anagrams, :time_taken, :float

  end
end
