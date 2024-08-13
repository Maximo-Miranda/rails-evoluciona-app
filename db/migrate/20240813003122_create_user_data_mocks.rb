class CreateUserDataMocks < ActiveRecord::Migration[7.1]
  def change
    create_table :user_data_mocks do |t|
      t.string :name
      t.string :lastname
      t.string :email
      t.string :phone
      t.string :token

      t.timestamps
    end
  end
end
