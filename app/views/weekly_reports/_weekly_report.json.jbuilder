json.extract! weekly_report, :id, :done_at, :lesson, :challenge, :created_at, :updated_at
json.url weekly_report_url(weekly_report, format: :json)
