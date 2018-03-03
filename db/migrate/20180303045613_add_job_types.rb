class AddJobTypes < ActiveRecord::Migration[5.1]
  def change
    add_column :jobs, :job_type, :integer
  end
end
