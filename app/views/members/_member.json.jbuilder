json.extract! member, :id, :email, :first_name, :last_name, :pronouns, :classification, :major, :phone_number, :created_at, :updated_at
json.url member_url(member, format: :json)
