Rails.application.config.middleware.insert_before 0, Rack::Cors do
    allow do
      origins 'http://localhost:4000' # Replace this with the domain of your frontend (if not localhost)
      resource '/musics', headers: :any, methods: [:get]
    end
  end