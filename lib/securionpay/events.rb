module SecurionPay
  class Events
    extend TransactionBase

    def self.retrieve(event_id)
      communicator.get(
        path_builder.build_events_path(event_id)
      )
    end

    def self.list
      communicator.get(
        path_builder.build_events_path
      )
    end
  end
end
