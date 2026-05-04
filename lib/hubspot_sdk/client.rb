# frozen_string_literal: true

module HubSpotSDK
  class Client < HubSpotSDK::Internal::Transport::BaseClient
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

    # @return [HubSpotSDK::Resources::Account]
    attr_reader :account

    # @return [HubSpotSDK::Resources::Auth]
    attr_reader :auth

    # @return [HubSpotSDK::Resources::Automation]
    attr_reader :automation

    # @return [HubSpotSDK::Resources::BusinessUnits]
    attr_reader :business_units

    # @return [HubSpotSDK::Resources::Cms]
    attr_reader :cms

    # @return [HubSpotSDK::Resources::CommunicationPreferences]
    attr_reader :communication_preferences

    # @return [HubSpotSDK::Resources::Conversations]
    attr_reader :conversations

    # @return [HubSpotSDK::Resources::Crm]
    attr_reader :crm

    # @return [HubSpotSDK::Resources::Events]
    attr_reader :events

    # @return [HubSpotSDK::Resources::Files]
    attr_reader :files

    # @return [HubSpotSDK::Resources::Marketing]
    attr_reader :marketing

    # @return [HubSpotSDK::Resources::Meta]
    attr_reader :meta

    # @return [HubSpotSDK::Resources::Scheduler]
    attr_reader :scheduler

    # @return [HubSpotSDK::Resources::Settings]
    attr_reader :settings

    # @return [HubSpotSDK::Resources::Webhooks]
    attr_reader :webhooks

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

      headers = {}
      custom_headers_env = ENV["HUBSPOT_CUSTOM_HEADERS"]
      unless custom_headers_env.nil?
        parsed = {}
        custom_headers_env.split("\n").each do |line|
          colon = line.index(":")
          unless colon.nil?
            parsed[line[0...colon].strip] = line[(colon + 1)..].strip
          end
        end
        headers = parsed.merge(headers)
      end

      @access_token = access_token&.to_s
      @developer_api_key = developer_api_key&.to_s

      super(
        base_url: base_url,
        timeout: timeout,
        max_retries: max_retries,
        initial_retry_delay: initial_retry_delay,
        max_retry_delay: max_retry_delay,
        headers: headers
      )

      @account = HubSpotSDK::Resources::Account.new(client: self)
      @auth = HubSpotSDK::Resources::Auth.new(client: self)
      @automation = HubSpotSDK::Resources::Automation.new(client: self)
      @business_units = HubSpotSDK::Resources::BusinessUnits.new(client: self)
      @cms = HubSpotSDK::Resources::Cms.new(client: self)
      @communication_preferences = HubSpotSDK::Resources::CommunicationPreferences.new(client: self)
      @conversations = HubSpotSDK::Resources::Conversations.new(client: self)
      @crm = HubSpotSDK::Resources::Crm.new(client: self)
      @events = HubSpotSDK::Resources::Events.new(client: self)
      @files = HubSpotSDK::Resources::Files.new(client: self)
      @marketing = HubSpotSDK::Resources::Marketing.new(client: self)
      @meta = HubSpotSDK::Resources::Meta.new(client: self)
      @scheduler = HubSpotSDK::Resources::Scheduler.new(client: self)
      @settings = HubSpotSDK::Resources::Settings.new(client: self)
      @webhooks = HubSpotSDK::Resources::Webhooks.new(client: self)
    end
  end
end
