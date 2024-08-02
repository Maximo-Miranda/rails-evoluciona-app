json.extract! task, :id, :user_id, :title, :description, :end_date, :task_status, :priority, :created_at, :updated_at
json.url task_url(task, format: :json)
