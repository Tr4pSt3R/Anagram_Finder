class AddFiletypeFilesizeToUploads < ActiveRecord::Migration
  def change
    add_column :uploads, :filetype, :string

    add_column :uploads, :filesize, :string

  end
end
