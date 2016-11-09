class HardWorker
  include Sidekiq::Worker
  def perform(count)
    sleep(2)
    count += 1
  end
end
