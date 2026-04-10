# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Marketing
      class BatchResponsePublicCampaignWithAssetsWithErrors < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute completed_at
        #   The date and time when the batch operation was completed.
        #
        #   @return [Time]
        required :completed_at, Time, api_name: :completedAt

        # @!attribute results
        #
        #   @return [Array<HubSpotSDK::Models::Marketing::PublicCampaignWithAssets>]
        required :results,
                 -> { HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Marketing::PublicCampaignWithAssets] }

        # @!attribute started_at
        #   The date and time when the batch operation started.
        #
        #   @return [Time]
        required :started_at, Time, api_name: :startedAt

        # @!attribute status
        #   The current status of the batch operation, which can be CANCELED, COMPLETE,
        #   PENDING, or PROCESSING.
        #
        #   @return [Symbol, HubSpotSDK::Models::Marketing::BatchResponsePublicCampaignWithAssetsWithErrors::Status]
        required :status,
                 enum: -> { HubSpotSDK::Marketing::BatchResponsePublicCampaignWithAssetsWithErrors::Status }

        # @!attribute errors
        #
        #   @return [Array<HubSpotSDK::Models::StandardError>, nil]
        optional :errors, -> { HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::StandardError] }

        # @!attribute links
        #   A collection of links related to the batch operation.
        #
        #   @return [Hash{Symbol=>String}, nil]
        optional :links, HubSpotSDK::Internal::Type::HashOf[String]

        # @!attribute num_errors
        #   The number of errors that occurred during the batch operation.
        #
        #   @return [Integer, nil]
        optional :num_errors, Integer, api_name: :numErrors

        # @!attribute requested_at
        #   The date and time when the batch operation was requested.
        #
        #   @return [Time, nil]
        optional :requested_at, Time, api_name: :requestedAt

        # @!method initialize(completed_at:, results:, started_at:, status:, errors: nil, links: nil, num_errors: nil, requested_at: nil)
        #   Some parameter documentations has been truncated, see
        #   {HubSpotSDK::Models::Marketing::BatchResponsePublicCampaignWithAssetsWithErrors}
        #   for more details.
        #
        #   @param completed_at [Time] The date and time when the batch operation was completed.
        #
        #   @param results [Array<HubSpotSDK::Models::Marketing::PublicCampaignWithAssets>]
        #
        #   @param started_at [Time] The date and time when the batch operation started.
        #
        #   @param status [Symbol, HubSpotSDK::Models::Marketing::BatchResponsePublicCampaignWithAssetsWithErrors::Status] The current status of the batch operation, which can be CANCELED, COMPLETE, PEND
        #
        #   @param errors [Array<HubSpotSDK::Models::StandardError>]
        #
        #   @param links [Hash{Symbol=>String}] A collection of links related to the batch operation.
        #
        #   @param num_errors [Integer] The number of errors that occurred during the batch operation.
        #
        #   @param requested_at [Time] The date and time when the batch operation was requested.

        # The current status of the batch operation, which can be CANCELED, COMPLETE,
        # PENDING, or PROCESSING.
        #
        # @see HubSpotSDK::Models::Marketing::BatchResponsePublicCampaignWithAssetsWithErrors#status
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
