module Semaphore
  class Client
    include Semaphore::HTTP

    CONFIG_KEYS = %i[
      api_version
      api_key
      sender_name
      uri_base
      request_timeout
    ].freeze

    attr_reader(*CONFIG_KEYS)

    def initialize(config = {})
      CONFIG_KEYS.each do |key|
        instance_variable_set("@#{key}", config[key] || Semaphore.configuration.send(key))
      end
    end

    def messages(parameters: {})
      post_request(path: '/messages', parameters:)
    end

    def priority(parameters: {})
      post_request(path: '/priority', parameters:)
    end

    def otp(parameters: {})
      post_request(path: '/otp', parameters:)
    end

    def get_message(id, parameters: {})
      get_request(path: "/messages/#{id}", parameters:)
    end

    def get_account(parameters: {})
      get_request(path: '/account', parameters:)
    end

    def get_account_transactions(parameters: {})
      get_request(path: '/account/transactions', parameters:)
    end

    def get_account_sendernames(parameters: {})
      get_request(path: '/account/sendernames', parameters:)
    end

    def get_account_users(parameters: {})
      get_request(path: '/account/users', parameters:)
    end
  end
end
