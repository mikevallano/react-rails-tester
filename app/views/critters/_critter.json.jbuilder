json.extract! critter, :id, :name, :age, :crit_type, :created_at, :updated_at
json.url critter_url(critter, format: :json)
