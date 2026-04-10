# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Marketing
      class BatchResponsePublicCampaign < HubSpotSDK::Internal::Type::BaseModel
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
        #   @return [Array<HubSpotSDK::Models::Marketing::PublicCampaign>]
        required :results, -> { HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Marketing::PublicCampaign] }

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
        #   @return [Symbol, HubSpotSDK::Models::Marketing::BatchResponsePublicCampaign::Status]
        required :status, enum: -> { HubSpotSDK::Marketing::BatchResponsePublicCampaign::Status }

        # @!attribute links
        #   A map of related links associated with the batch operation.
        #
        #   @return [Hash{Symbol=>String}, nil]
        optional :links, HubSpotSDK::Internal::Type::HashOf[String]

        # @!attribute requested_at
        #   The date and time when the batch operation was requested, formatted as a
        #   date-time string.
        #
        #   @return [Time, nil]
        optional :requested_at, Time, api_name: :requestedAt

        # @!method initialize(completed_at:, results:, started_at:, status:, links: nil, requested_at: nil)
        #   Some parameter documentations has been truncated, see
        #   {HubSpotSDK::Models::Marketing::BatchResponsePublicCampaign} for more details.
        #
        #   @param completed_at [Time] The date and time when the batch operation was completed, formatted as a date-ti
        #
        #   @param results [Array<HubSpotSDK::Models::Marketing::PublicCampaign>] An array of results from the batch operation, each item representing a public ca
        #
        #   @param started_at [Time] The date and time when the batch operation started, formatted as a date-time str
        #
        #   @param status [Symbol, HubSpotSDK::Models::Marketing::BatchResponsePublicCampaign::Status] The current status of the batch operation, with possible values: CANCELED, COMPL
        #
        #   @param links [Hash{Symbol=>String}] A map of related links associated with the batch operation.
        #
        #   @param requested_at [Time] The date and time when the batch operation was requested, formatted as a date-ti

        # The current status of the batch operation, with possible values: CANCELED,
        # COMPLETE, PENDING, PROCESSING.
        #
        # @see HubSpotSDK::Models::Marketing::BatchResponsePublicCampaign#status
        module Status
          extend HubSpotSDK::Internal::Type::Enum

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
