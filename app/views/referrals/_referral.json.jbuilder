json.extract! referral, :id, :title, :link, :comment, :company, :category, :created_at, :updated_at
json.url referral_url(referral, format: :json)
