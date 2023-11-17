# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require_relative "config/application"

Rails.application.load_tasks

task :karafka_server do
  exec "bundle exec karafka s"
end

task :rails_server do
  exec "rails s"
end