json.array!(@days) do |day|
  json.extract! day, :id, :date, :total_tips, :total_hours, :total_tips_per_hour, :total_complition
  json.url day_url(day, format: :json)
end
