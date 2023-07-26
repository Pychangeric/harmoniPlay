json.extract! share, :id, :user_id, :platform, :share_url, :created_at, :updated_at
json.url share_url(share, format: :json)
