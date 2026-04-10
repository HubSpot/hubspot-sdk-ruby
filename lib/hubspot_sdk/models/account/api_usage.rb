# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Account
      class APIUsage < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute collected_at
        #   Indicates when the cache was last updated.
        #
        #   @return [Time]
        required :collected_at, Time, api_name: :collectedAt

        # @!attribute current_usage
        #   How many API calls an account has made for the current day.
        #
        #   @return [Integer]
        required :current_usage, Integer, api_name: :currentUsage

        # @!attribute fetch_status
        #   Status of fetching the information, including if the data came from the cache.
        #
        #   @return [Symbol, HubSpotSDK::Models::Account::APIUsage::FetchStatus]
        required :fetch_status,
                 enum: -> {
                   HubSpotSDK::Account::APIUsage::FetchStatus
                 },
                 api_name: :fetchStatus

        # @!attribute name
        #   Name of the limit type.
        #
        #   @return [String]
        required :name, String

        # @!attribute usage_limit
        #   Limits by which a single integration can consume the HubSpot public APIs.
        #
        #   @return [Integer]
        required :usage_limit, Integer, api_name: :usageLimit

        # @!attribute resets_at
        #   Time that the limit will reset.
        #
        #   @return [Time, nil]
        optional :resets_at, Time, api_name: :resetsAt

        # @!method initialize(collected_at:, current_usage:, fetch_status:, name:, usage_limit:, resets_at: nil)
        #   @param collected_at [Time] Indicates when the cache was last updated.
        #
        #   @param current_usage [Integer] How many API calls an account has made for the current day.
        #
        #   @param fetch_status [Symbol, HubSpotSDK::Models::Account::APIUsage::FetchStatus] Status of fetching the information, including if the data came from the cache.
        #
        #   @param name [String] Name of the limit type.
        #
        #   @param usage_limit [Integer] Limits by which a single integration can consume the HubSpot public APIs.
        #
        #   @param resets_at [Time] Time that the limit will reset.

        # Status of fetching the information, including if the data came from the cache.
        #
        # @see HubSpotSDK::Models::Account::APIUsage#fetch_status
        module FetchStatus
          extend HubSpotSDK::Internal::Type::Enum

          CACHED = :CACHED
          FAILURE = :FAILURE
          NOTFOUND = :NOTFOUND
          SUCCESS = :SUCCESS
          TIMEOUT = :TIMEOUT

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
