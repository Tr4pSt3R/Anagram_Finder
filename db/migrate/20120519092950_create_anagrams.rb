class CreateAnagrams < ActiveRecord::Migration
  def change
    create_table :anagrams do |t|

      t.timestamps
    end
  end
end
