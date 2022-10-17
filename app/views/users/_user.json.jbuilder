json.extract! user, :id, :email, :first_name, :last_name, :pronouns, :classification, :major, :phone_number, :created_at, :updated_at, :role
json.url user_url(user, format: :json)
