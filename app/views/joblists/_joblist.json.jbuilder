json.extract! joblist, :id, :company, :interviewer, :interview, :test, :date, :result, :created_at, :updated_at
json.url joblist_url(joblist, format: :json)
