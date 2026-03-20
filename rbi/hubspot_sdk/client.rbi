# typed: strong

module HubspotSDK
  class Client < HubspotSDK::Internal::Transport::BaseClient
    DEFAULT_MAX_RETRIES = 2

    DEFAULT_TIMEOUT_IN_SECONDS = T.let(60.0, Float)

    DEFAULT_INITIAL_RETRY_DELAY = T.let(0.5, Float)

    DEFAULT_MAX_RETRY_DELAY = T.let(8.0, Float)

    sig { returns(T.nilable(String)) }
    attr_reader :access_token

    sig { returns(T.nilable(String)) }
    attr_reader :developer_api_key

    sig { returns(HubspotSDK::Resources::Account) }
    attr_reader :account

    sig { returns(HubspotSDK::Resources::Crm) }
    attr_reader :crm

    # @api private
    sig { override.returns(T::Hash[String, String]) }
    private def auth_headers
    end

    # @api private
    sig { override.returns(T::Hash[String, String]) }
    private def auth_query
    end

    # Creates and returns a new client for interacting with the API.
    sig do
      params(
        access_token: T.nilable(String),
        developer_api_key: T.nilable(String),
        base_url: T.nilable(String),
        max_retries: Integer,
        timeout: Float,
        initial_retry_delay: Float,
        max_retry_delay: Float
      ).returns(T.attached_class)
    end
    def self.new(
      access_token: nil,
      developer_api_key: nil,
      # Override the default base URL for the API, e.g.,
      # `"https://api.example.com/v2/"`. Defaults to `ENV["HUBSPOT_BASE_URL"]`
      base_url: ENV["HUBSPOT_BASE_URL"],
      # Max number of retries to attempt after a failed retryable request.
      max_retries: HubspotSDK::Client::DEFAULT_MAX_RETRIES,
      timeout: HubspotSDK::Client::DEFAULT_TIMEOUT_IN_SECONDS,
      initial_retry_delay: HubspotSDK::Client::DEFAULT_INITIAL_RETRY_DELAY,
      max_retry_delay: HubspotSDK::Client::DEFAULT_MAX_RETRY_DELAY
    )
    end
  end
end
