class HardWorker
  include Sidekiq::Worker

  def perform(message)
    # Do something basic.
    # Logging example from https://github.com/mperham/sidekiq/wiki/Logging
    logger.info message
    logger.debug "Additional info: #{hash.inspect}"
  end
end
