require "redis"

class CounterController < ApplicationController
  def create
    2.times do |count|
      @count = HardWorker.new.perform(count)
    end
  end

  def show
    redis = Redis.new
    counter = redis.get("counter")
    p "-----------------#{counter}"
    render json: counter
  end

end
