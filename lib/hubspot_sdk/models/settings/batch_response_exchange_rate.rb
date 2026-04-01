# frozen_string_literal: true

module HubspotSDK
  module Models
    module Settings
      class BatchResponseExchangeRate < HubspotSDK::Internal::Type::BaseModel
        # @!attribute completed_at
        #   The datetime the response was completed
        #
        #   @return [Time]
        required :completed_at, Time, api_name: :completedAt

        # @!attribute results
        #
        #   @return [Array<HubspotSDK::Models::Settings::ExchangeRate>]
        required :results, -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Settings::ExchangeRate] }

        # @!attribute started_at
        #   The datetime the of the request.
        #
        #   @return [Time]
        required :started_at, Time, api_name: :startedAt

        # @!attribute status
        #   The current status of the response (e.g. COMPLETED)
        #
        #   @return [Symbol, HubspotSDK::Models::Settings::BatchResponseExchangeRate::Status]
        required :status, enum: -> { HubspotSDK::Settings::BatchResponseExchangeRate::Status }

        # @!attribute links
        #   The link to the next page with exchange rates.
        #
        #   @return [Hash{Symbol=>String}, nil]
        optional :links, HubspotSDK::Internal::Type::HashOf[String]

        # @!attribute requested_at
        #   The datetime the of the request.
        #
        #   @return [Time, nil]
        optional :requested_at, Time, api_name: :requestedAt

        # @!method initialize(completed_at:, results:, started_at:, status:, links: nil, requested_at: nil)
        #   @param completed_at [Time] The datetime the response was completed
        #
        #   @param results [Array<HubspotSDK::Models::Settings::ExchangeRate>]
        #
        #   @param started_at [Time] The datetime the of the request.
        #
        #   @param status [Symbol, HubspotSDK::Models::Settings::BatchResponseExchangeRate::Status] The current status of the response (e.g. COMPLETED)
        #
        #   @param links [Hash{Symbol=>String}] The link to the next page with exchange rates.
        #
        #   @param requested_at [Time] The datetime the of the request.

        # The current status of the response (e.g. COMPLETED)
        #
        # @see HubspotSDK::Models::Settings::BatchResponseExchangeRate#status
        module Status
          extend HubspotSDK::Internal::Type::Enum

          CANCELED = :CANCELED
          COMPLETE = :COMPLETE
          PENDING = :PENDING
          PROCESSING = :PROCESSING

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
