class AddAnagramSearchCriteriaToAnagram < ActiveRecord::Migration

  def change
    add_column :anagrams, :word, :string

  end
end
