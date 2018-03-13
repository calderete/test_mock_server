class CreateOraclePaymentData < ActiveRecord::Migration[5.1]
  def change
    create_table :oracle_payment_data do |t|
      t.string :acct_num
      t.boolean :active

      t.timestamps
    end
  end
end
