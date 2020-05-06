namespace :sidekiq do
    task :start do
      run "bundle exec sidekiq -c 10 -e production -L log/sidekiq.log -d"
      p capture("ps aux | grep sidekiq | awk '{print [}' | sed -n 1p").strip!
    end
end
