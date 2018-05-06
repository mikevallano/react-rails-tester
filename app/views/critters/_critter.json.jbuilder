json.extract! critter, :id, :name, :age, :crit_type
json.path critter_path(critter, format: :json)
