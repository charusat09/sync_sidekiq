class CounterController < ApplicationController
  def create
    5.times do |count|
      @count = HardWorker.new.perform(count)
    end
  end
end
