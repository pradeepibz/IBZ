class CreateClientFeedbacks < ActiveRecord::Migration[5.0]
  def change
    create_table :client_feedbacks do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :contact
      t.text :feedback
      t.string :avatar
      t.string :address
      t.string :city
      t.string :state
      t.string :country
      t.string :zipcode
      t.boolean :approved, default: false

      t.timestamps
    end
  end
end
