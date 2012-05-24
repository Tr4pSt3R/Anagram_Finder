class CreateAnagrams < ActiveRecord::Migration
  def change
    create_table :anagrams do |t|
       t.time_taken
       t.timestamps
    end
  end
end
