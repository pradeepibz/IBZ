json.extract! client_feedback, :id, :first_name, :last_name, :email, :contact, :feedback, :avatar, :address, :city, :state, :country, :zipcode, :approved, :created_at, :updated_at
json.url client_feedback_url(client_feedback, format: :json)
