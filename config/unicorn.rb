worker_processes 3 # amount of unicorn workers to spin up
timeout 30         # restarts workers that hang for 30 seconds
#preload_app true

@worker = nil

before_fork do |server, worker|
  @worker ||= spawn("bundle exec rake " + \
    "jobs:work")
end