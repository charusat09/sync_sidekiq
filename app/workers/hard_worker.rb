class HardWorker
  include Sidekiq::Worker
  def perform
    5.times do |count|
      sleep(1)
      Redis.new.set("counter", count)
    end
  end
end
