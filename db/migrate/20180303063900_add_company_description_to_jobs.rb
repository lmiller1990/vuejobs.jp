class AddCompanyDescriptionToJobs < ActiveRecord::Migration[5.1]
  def change
    add_column :jobs, :company_description, :string
  end
end
