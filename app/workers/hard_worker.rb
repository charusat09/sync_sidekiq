require "redis"

class HardWorker
  include Sidekiq::Worker
  def perform(count)
    sleep(2)
    count += 1
    redis = Redis.new.set("counter", count)
    p "counting on --------- #{count}"
  end
end
