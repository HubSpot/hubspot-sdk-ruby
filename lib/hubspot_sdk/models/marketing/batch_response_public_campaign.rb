# frozen_string_literal: true

module HubspotSDK
  module Models
    module Marketing
      class BatchResponsePublicCampaign < HubspotSDK::Internal::Type::BaseModel
        # @!attribute completed_at
        #   The date and time when the batch operation was completed, formatted as a
        #   date-time string.
        #
        #   @return [Time]
        required :completed_at, Time, api_name: :completedAt

        # @!attribute results
        #   An array of results from the batch operation, each item representing a public
        #   campaign.
        #
        #   @return [Array<HubspotSDK::Models::Marketing::PublicCampaign>]
        required :results, -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Marketing::PublicCampaign] }

        # @!attribute started_at
        #   The date and time when the batch operation started, formatted as a date-time
        #   string.
        #
        #   @return [Time]
        required :started_at, Time, api_name: :startedAt

        # @!attribute status
        #   The current status of the batch operation, with possible values: CANCELED,
        #   COMPLETE, PENDING, PROCESSING.
        #
        #   @return [Symbol, HubspotSDK::Models::Marketing::BatchResponsePublicCampaign::Status]
        required :status, enum: -> { HubspotSDK::Marketing::BatchResponsePublicCampaign::Status }

        # @!attribute errors
        #   An array of errors that occurred during the batch operation, each item detailing
        #   a specific error.
        #
        #   @return [Array<HubspotSDK::Models::StandardError>, nil]
        optional :errors, -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::StandardError] }

        # @!attribute links
        #   A map of related links associated with the batch operation.
        #
        #   @return [Hash{Symbol=>String}, nil]
        optional :links, HubspotSDK::Internal::Type::HashOf[String]

        # @!attribute num_errors
        #   The number of errors that occurred during the batch operation.
        #
        #   @return [Integer, nil]
        optional :num_errors, Integer, api_name: :numErrors

        # @!attribute requested_at
        #   The date and time when the batch operation was requested, formatted as a
        #   date-time string.
        #
        #   @return [Time, nil]
        optional :requested_at, Time, api_name: :requestedAt

        # @!method initialize(completed_at:, results:, started_at:, status:, errors: nil, links: nil, num_errors: nil, requested_at: nil)
        #   Some parameter documentations has been truncated, see
        #   {HubspotSDK::Models::Marketing::BatchResponsePublicCampaign} for more details.
        #
        #   @param completed_at [Time] The date and time when the batch operation was completed, formatted as a date-ti
        #
        #   @param results [Array<HubspotSDK::Models::Marketing::PublicCampaign>] An array of results from the batch operation, each item representing a public ca
        #
        #   @param started_at [Time] The date and time when the batch operation started, formatted as a date-time str
        #
        #   @param status [Symbol, HubspotSDK::Models::Marketing::BatchResponsePublicCampaign::Status] The current status of the batch operation, with possible values: CANCELED, COMPL
        #
        #   @param errors [Array<HubspotSDK::Models::StandardError>] An array of errors that occurred during the batch operation, each item detailing
        #
        #   @param links [Hash{Symbol=>String}] A map of related links associated with the batch operation.
        #
        #   @param num_errors [Integer] The number of errors that occurred during the batch operation.
        #
        #   @param requested_at [Time] The date and time when the batch operation was requested, formatted as a date-ti

        # The current status of the batch operation, with possible values: CANCELED,
        # COMPLETE, PENDING, PROCESSING.
        #
        # @see HubspotSDK::Models::Marketing::BatchResponsePublicCampaign#status
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
