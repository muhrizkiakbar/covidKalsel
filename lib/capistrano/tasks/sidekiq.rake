desc "Start sidekiq"
task :start do
  run "cd #{current_path} && bundle exec sidekiq --environment production --daemon --config config/sidekiq.yml && sleep 1"
end
