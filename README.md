# README

This a demo for active job basic with Sidekiq
- Install Redis
$ sudo apt-get install redis-server

- Start Redis
$ redis-server

- Add gem Sidekiq
gem "sidekiq"

- Start Sidekiq
$ bundle exec sidekiq

- Active Job setup with Sidekiq
# config/application.rb
config.active_job.queue_adapter = :sidekiq

- Creating a Job
$ rails generate job job_name

- Clear Sidekiq Jobs commands
require 'sidekiq/api'
# Clear retry set
Sidekiq::RetrySet.new.clear

# Clear scheduled jobs
Sidekiq::ScheduledSet.new.clear
# Clear 'Dead' jobs statistics
Sidekiq::DeadSet.new.clear

# Clear 'Processed' and 'Failed' jobs statistics
Sidekiq::Stats.new.reset

# Clear specific queue
stats = Sidekiq::Stats.new
stats.queues
#=> {"default"=>5, "your_custom_queue"=>1}
queue = Sidekiq::Queue.new("your_custom_queue")
queue.count
queue.clear
