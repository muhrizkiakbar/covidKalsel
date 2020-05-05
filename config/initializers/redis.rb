uri = "#{ENV['REDIS_URL']}/0/covidkalsel" || 'redis://localhost:6379/0/covidkalsel'

Rails.application.config.cache_store = :redis_store, uri
