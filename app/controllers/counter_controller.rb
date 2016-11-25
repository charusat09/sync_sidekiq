class CounterController < ApplicationController
  def create
    @count = HardWorker.new.perform
  end

  def show
    counter = Redis.new.get("counter")
    render json: counter
  end

end
