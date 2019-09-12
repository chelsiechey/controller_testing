class CreateBankAccounts < ActiveRecord::Migration[6.0]
  def change
    create_table :bank_accounts do |t|
      t.float :amount
      t.boolean :active
      t.string :institution
      t.text :description
      t.belongs_to :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
