class AddFilenameToUploads < ActiveRecord::Migration
  def change
    add_column :uploads, :filename, :string

  end
end
