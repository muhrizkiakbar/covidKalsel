uri = "#{ENV['REDIS_URL']}" || 'redis://localhost:6379'

Rails.application.config.cache_store = :redis_store, uri
