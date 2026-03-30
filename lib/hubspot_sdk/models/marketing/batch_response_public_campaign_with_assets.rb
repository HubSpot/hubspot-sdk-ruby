# frozen_string_literal: true

module HubspotSDK
  module Models
    module Marketing
      class BatchResponsePublicCampaignWithAssets < HubspotSDK::Internal::Type::BaseModel
        # @!attribute completed_at
        #   The timestamp when the batch request processing was completed.
        #
        #   @return [Time]
        required :completed_at, Time, api_name: :completedAt

        # @!attribute results
        #   An array of results from the batch operation, each representing a public
        #   campaign with assets.
        #
        #   @return [Array<HubspotSDK::Models::Marketing::PublicCampaignWithAssets>]
        required :results,
                 -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Marketing::PublicCampaignWithAssets] }

        # @!attribute started_at
        #   The timestamp when the processing of the batch request began.
        #
        #   @return [Time]
        required :started_at, Time, api_name: :startedAt

        # @!attribute status
        #   The current processing status of the batch operation, with possible values:
        #   CANCELED, COMPLETE, PENDING, PROCESSING.
        #
        #   @return [Symbol, HubspotSDK::Models::Marketing::BatchResponsePublicCampaignWithAssets::Status]
        required :status, enum: -> { HubspotSDK::Marketing::BatchResponsePublicCampaignWithAssets::Status }

        # @!attribute errors
        #   An array of errors encountered during the batch operation, each described by a
        #   StandardError object.
        #
        #   @return [Array<HubspotSDK::Models::StandardError>, nil]
        optional :errors, -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::StandardError] }

        # @!attribute links
        #   A collection of URLs linking to related resources or documentation.
        #
        #   @return [Hash{Symbol=>String}, nil]
        optional :links, HubspotSDK::Internal::Type::HashOf[String]

        # @!attribute num_errors
        #   The number of errors encountered during the batch operation.
        #
        #   @return [Integer, nil]
        optional :num_errors, Integer, api_name: :numErrors

        # @!attribute requested_at
        #   The timestamp when the batch request was initially made.
        #
        #   @return [Time, nil]
        optional :requested_at, Time, api_name: :requestedAt

        # @!method initialize(completed_at:, results:, started_at:, status:, errors: nil, links: nil, num_errors: nil, requested_at: nil)
        #   Some parameter documentations has been truncated, see
        #   {HubspotSDK::Models::Marketing::BatchResponsePublicCampaignWithAssets} for more
        #   details.
        #
        #   @param completed_at [Time] The timestamp when the batch request processing was completed.
        #
        #   @param results [Array<HubspotSDK::Models::Marketing::PublicCampaignWithAssets>] An array of results from the batch operation, each representing a public campaig
        #
        #   @param started_at [Time] The timestamp when the processing of the batch request began.
        #
        #   @param status [Symbol, HubspotSDK::Models::Marketing::BatchResponsePublicCampaignWithAssets::Status] The current processing status of the batch operation, with possible values: CANC
        #
        #   @param errors [Array<HubspotSDK::Models::StandardError>] An array of errors encountered during the batch operation, each described by a S
        #
        #   @param links [Hash{Symbol=>String}] A collection of URLs linking to related resources or documentation.
        #
        #   @param num_errors [Integer] The number of errors encountered during the batch operation.
        #
        #   @param requested_at [Time] The timestamp when the batch request was initially made.

        # The current processing status of the batch operation, with possible values:
        # CANCELED, COMPLETE, PENDING, PROCESSING.
        #
        # @see HubspotSDK::Models::Marketing::BatchResponsePublicCampaignWithAssets#status
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
