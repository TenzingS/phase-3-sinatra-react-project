class AddLogoToStock < ActiveRecord::Migration[6.1]
  def change
    add_column :stocks, :logo_url, :string
  end
end
