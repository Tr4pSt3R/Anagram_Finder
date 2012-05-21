class RemoveFilepathFromUploads < ActiveRecord::Migration
  def up
    remove_column :uploads, :filepath
      end

  def down
    add_column :uploads, :filepath, :string
  end
end
