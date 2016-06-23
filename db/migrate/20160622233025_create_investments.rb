class CreateInvestments < ActiveRecord::Migration
  def change
    create_table :investments do |t|
      t.references :user, null: false, index: true
      t.string :description, null: false
      t.string :investment_type, null: false
      t.boolean :has_iof
      t.boolean :has_income_tax

      t.timestamps
    end
    add_foreign_key :investments, :users
    add_index :investments, [:user_id, :description]
  end
end
