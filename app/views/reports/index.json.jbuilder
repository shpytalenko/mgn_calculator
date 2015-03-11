json.array!(@reports) do |report|
  json.extract! report, :id, :worker_id, :clock_in, :clock_out, :tips, :salary_complition, :total_after_complition
  json.url report_url(report, format: :json)
end
