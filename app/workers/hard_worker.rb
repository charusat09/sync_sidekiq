class HardWorker
  include Sidekiq::Worker
  def perform(count)
    sleep(1)
    Redis.new.set("counter", count)
  end
end
