# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Marketing
      class BatchResponsePublicCampaignWithAssets < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute completed_at
        #   The timestamp when the batch request processing was completed.
        #
        #   @return [Time]
        required :completed_at, Time, api_name: :completedAt

        # @!attribute results
        #   An array of results from the batch operation, each representing a public
        #   campaign with assets.
        #
        #   @return [Array<HubSpotSDK::Models::Marketing::PublicCampaignWithAssets>]
        required :results,
                 -> { HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Marketing::PublicCampaignWithAssets] }

        # @!attribute started_at
        #   The timestamp when the processing of the batch request began.
        #
        #   @return [Time]
        required :started_at, Time, api_name: :startedAt

        # @!attribute status
        #   The current processing status of the batch operation, with possible values:
        #   CANCELED, COMPLETE, PENDING, PROCESSING.
        #
        #   @return [Symbol, HubSpotSDK::Models::Marketing::BatchResponsePublicCampaignWithAssets::Status]
        required :status, enum: -> { HubSpotSDK::Marketing::BatchResponsePublicCampaignWithAssets::Status }

        # @!attribute links
        #   A collection of URLs linking to related resources or documentation.
        #
        #   @return [Hash{Symbol=>String}, nil]
        optional :links, HubSpotSDK::Internal::Type::HashOf[String]

        # @!attribute requested_at
        #   The timestamp when the batch request was initially made.
        #
        #   @return [Time, nil]
        optional :requested_at, Time, api_name: :requestedAt

        # @!method initialize(completed_at:, results:, started_at:, status:, links: nil, requested_at: nil)
        #   Some parameter documentations has been truncated, see
        #   {HubSpotSDK::Models::Marketing::BatchResponsePublicCampaignWithAssets} for more
        #   details.
        #
        #   @param completed_at [Time] The timestamp when the batch request processing was completed.
        #
        #   @param results [Array<HubSpotSDK::Models::Marketing::PublicCampaignWithAssets>] An array of results from the batch operation, each representing a public campaig
        #
        #   @param started_at [Time] The timestamp when the processing of the batch request began.
        #
        #   @param status [Symbol, HubSpotSDK::Models::Marketing::BatchResponsePublicCampaignWithAssets::Status] The current processing status of the batch operation, with possible values: CANC
        #
        #   @param links [Hash{Symbol=>String}] A collection of URLs linking to related resources or documentation.
        #
        #   @param requested_at [Time] The timestamp when the batch request was initially made.

        # The current processing status of the batch operation, with possible values:
        # CANCELED, COMPLETE, PENDING, PROCESSING.
        #
        # @see HubSpotSDK::Models::Marketing::BatchResponsePublicCampaignWithAssets#status
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
