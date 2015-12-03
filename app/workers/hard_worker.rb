class HardWorker
  include Sidekiq::Worker
  sidekiq_options retry: 5

  def perform(text)
    sleep 1
    puts "DONE! #{text}"
  end
end
