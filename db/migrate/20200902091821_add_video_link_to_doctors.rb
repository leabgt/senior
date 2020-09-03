class AddVideoLinkToDoctors < ActiveRecord::Migration[6.0]
  def change
    add_column :doctors, :video_link, :string
  end
end
