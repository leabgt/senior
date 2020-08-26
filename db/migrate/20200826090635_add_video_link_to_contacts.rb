class AddVideoLinkToContacts < ActiveRecord::Migration[6.0]
  def change
    add_column :contacts, :video_link, :string
  end
end
