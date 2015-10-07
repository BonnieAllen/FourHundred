class AddSecondColumnToUploads < ActiveRecord::Migration
  def change
      add_column :uploads, :purchase_url, :string
      add_column :uploads, :image_file_size, :integer
  end
end
