class AddCompanyToAccounts < ActiveRecord::Migration[5.2]
  def change
    add_column :accounts, :company, :string
  end
end
