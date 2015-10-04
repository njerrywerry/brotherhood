json.array!(@reports) do |report|
  json.extract! report, :id, :title, :details, :phone_no, :message
  json.url report_url(report, format: :json)
end
