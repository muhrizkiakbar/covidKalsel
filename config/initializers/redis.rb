# uri = "#{ENV['REDIS_URL']}" || 'redis://localhost:6379/12'
uri = "#{ENV['REDIS_URL']}/12" || 'redis://localhost:6379/12'

Rails.application.config.cache_store = :redis_store, uri
