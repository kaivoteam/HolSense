json.extract! level, :id, :name, :description, :school.references, :created_at, :updated_at
json.url level_url(level, format: :json)
