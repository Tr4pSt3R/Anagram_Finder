class RemoveFilenameFromUploads < ActiveRecord::Migration
  def up
    remove_column :uploads, :filename
      end

  def down
    add_column :uploads, :filename, :string
  end
end
