# frozen_string_literal: true

module HubspotSDK
  module Models
    module Settings
      class BatchResponseExchangeRateWithErrors < HubspotSDK::Internal::Type::BaseModel
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
        #   @return [Symbol, HubspotSDK::Models::Settings::BatchResponseExchangeRateWithErrors::Status]
        required :status, enum: -> { HubspotSDK::Settings::BatchResponseExchangeRateWithErrors::Status }

        # @!attribute errors
        #
        #   @return [Array<HubspotSDK::Models::StandardError>, nil]
        optional :errors, -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::StandardError] }

        # @!attribute links
        #   The link to the next page with exchange rates.
        #
        #   @return [Hash{Symbol=>String}, nil]
        optional :links, HubspotSDK::Internal::Type::HashOf[String]

        # @!attribute num_errors
        #   The number of errors associated to the request.
        #
        #   @return [Integer, nil]
        optional :num_errors, Integer, api_name: :numErrors

        # @!attribute requested_at
        #   The datetime the of the request.
        #
        #   @return [Time, nil]
        optional :requested_at, Time, api_name: :requestedAt

        # @!method initialize(completed_at:, results:, started_at:, status:, errors: nil, links: nil, num_errors: nil, requested_at: nil)
        #   @param completed_at [Time] The datetime the response was completed
        #
        #   @param results [Array<HubspotSDK::Models::Settings::ExchangeRate>]
        #
        #   @param started_at [Time] The datetime the of the request.
        #
        #   @param status [Symbol, HubspotSDK::Models::Settings::BatchResponseExchangeRateWithErrors::Status] The current status of the response (e.g. COMPLETED)
        #
        #   @param errors [Array<HubspotSDK::Models::StandardError>]
        #
        #   @param links [Hash{Symbol=>String}] The link to the next page with exchange rates.
        #
        #   @param num_errors [Integer] The number of errors associated to the request.
        #
        #   @param requested_at [Time] The datetime the of the request.

        # The current status of the response (e.g. COMPLETED)
        #
        # @see HubspotSDK::Models::Settings::BatchResponseExchangeRateWithErrors#status
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
