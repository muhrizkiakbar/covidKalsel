# uri = "#{ENV['REDIS_URL']}" || 'redis://localhost:6379/12'
uri = "#{ENV['REDIS_URL']}/0/covidkalsel" || 'redis://localhost:6379/12/0/covidkalsel'
# uri = 'redis://localhost:6379/12'
Rails.application.config.cache_store = :redis_store, uri
