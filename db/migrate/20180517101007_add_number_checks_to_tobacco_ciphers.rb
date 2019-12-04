class AddNumberChecksToTobaccoCiphers < ActiveRecord::Migration[5.1]
  def change
    add_column :tobacco_ciphers, :number_cheks, :integer, default: 0
  end
end
