class AddWhatWhyDescriptionFields < ActiveRecord::Migration[5.1]
  def change
    add_column :jobs, :what_we_do, :text
    add_column :jobs, :why_we_do, :text
    add_column :jobs, :description, :text
    add_column :jobs, :contact_email, :string
    add_column :jobs, :website, :string
  end
end
