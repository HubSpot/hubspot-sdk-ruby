# frozen_string_literal: true

module HubspotSDK
  class Client < HubspotSDK::Internal::Transport::BaseClient
    # Default max number of retries to attempt after a failed retryable request.
    DEFAULT_MAX_RETRIES = 2

    # Default per-request timeout.
    DEFAULT_TIMEOUT_IN_SECONDS = 60.0

    # Default initial retry delay in seconds.
    # Overall delay is calculated using exponential backoff + jitter.
    DEFAULT_INITIAL_RETRY_DELAY = 0.5

    # Default max retry delay in seconds.
    DEFAULT_MAX_RETRY_DELAY = 8.0

    # @return [String, nil]
    attr_reader :access_token

    # @return [String, nil]
    attr_reader :developer_api_key

    # @return [HubspotSDK::Resources::Account]
    attr_reader :account

    # @return [HubspotSDK::Resources::Crm]
    attr_reader :crm

    # @api private
    #
    # @return [Hash{String=>String}]
    private def auth_headers
      return {} if @access_token.nil?

      {"authorization" => "Bearer #{@access_token}"}
    end

    # @api private
    #
    # @return [Hash{String=>String}]
    private def auth_query
      {"hapikey" => @developer_api_key}
    end

    # Creates and returns a new client for interacting with the API.
    #
    # @param access_token [String, nil]
    #
    # @param developer_api_key [String, nil]
    #
    # @param base_url [String, nil] Override the default base URL for the API, e.g.,
    # `"https://api.example.com/v2/"`. Defaults to `ENV["HUBSPOT_BASE_URL"]`
    #
    # @param max_retries [Integer] Max number of retries to attempt after a failed retryable request.
    #
    # @param timeout [Float]
    #
    # @param initial_retry_delay [Float]
    #
    # @param max_retry_delay [Float]
    def initialize(
      access_token: nil,
      developer_api_key: nil,
      base_url: ENV["HUBSPOT_BASE_URL"],
      max_retries: self.class::DEFAULT_MAX_RETRIES,
      timeout: self.class::DEFAULT_TIMEOUT_IN_SECONDS,
      initial_retry_delay: self.class::DEFAULT_INITIAL_RETRY_DELAY,
      max_retry_delay: self.class::DEFAULT_MAX_RETRY_DELAY
    )
      base_url ||= "https://api.hubapi.com"

      @access_token = access_token&.to_s
      @developer_api_key = developer_api_key&.to_s

      super(
        base_url: base_url,
        timeout: timeout,
        max_retries: max_retries,
        initial_retry_delay: initial_retry_delay,
        max_retry_delay: max_retry_delay
      )

      @account = HubspotSDK::Resources::Account.new(client: self)
      @crm = HubspotSDK::Resources::Crm.new(client: self)
    end
  end
end
