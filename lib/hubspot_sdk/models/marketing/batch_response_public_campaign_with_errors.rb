# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Marketing
      class BatchResponsePublicCampaignWithErrors < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute completed_at
        #   The date and time when the batch operation was completed.
        #
        #   @return [Time]
        required :completed_at, Time, api_name: :completedAt

        # @!attribute results
        #
        #   @return [Array<HubSpotSDK::Models::Marketing::PublicCampaign>]
        required :results, -> { HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Marketing::PublicCampaign] }

        # @!attribute started_at
        #   The date and time when the batch operation began.
        #
        #   @return [Time]
        required :started_at, Time, api_name: :startedAt

        # @!attribute status
        #   The current status of the batch operation. Accepted values are: CANCELED,
        #   COMPLETE, PENDING, PROCESSING.
        #
        #   @return [Symbol, HubSpotSDK::Models::Marketing::BatchResponsePublicCampaignWithErrors::Status]
        required :status, enum: -> { HubSpotSDK::Marketing::BatchResponsePublicCampaignWithErrors::Status }

        # @!attribute errors
        #
        #   @return [Array<HubSpotSDK::Models::StandardError>, nil]
        optional :errors, -> { HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::StandardError] }

        # @!attribute links
        #   URLs linking to resources or documentation related to the batch operation.
        #
        #   @return [Hash{Symbol=>String}, nil]
        optional :links, HubSpotSDK::Internal::Type::HashOf[String]

        # @!attribute num_errors
        #   The total number of errors encountered during the batch operation.
        #
        #   @return [Integer, nil]
        optional :num_errors, Integer, api_name: :numErrors

        # @!attribute requested_at
        #   The date and time when the batch request was made.
        #
        #   @return [Time, nil]
        optional :requested_at, Time, api_name: :requestedAt

        # @!method initialize(completed_at:, results:, started_at:, status:, errors: nil, links: nil, num_errors: nil, requested_at: nil)
        #   Some parameter documentations has been truncated, see
        #   {HubSpotSDK::Models::Marketing::BatchResponsePublicCampaignWithErrors} for more
        #   details.
        #
        #   @param completed_at [Time] The date and time when the batch operation was completed.
        #
        #   @param results [Array<HubSpotSDK::Models::Marketing::PublicCampaign>]
        #
        #   @param started_at [Time] The date and time when the batch operation began.
        #
        #   @param status [Symbol, HubSpotSDK::Models::Marketing::BatchResponsePublicCampaignWithErrors::Status] The current status of the batch operation. Accepted values are: CANCELED, COMPLE
        #
        #   @param errors [Array<HubSpotSDK::Models::StandardError>]
        #
        #   @param links [Hash{Symbol=>String}] URLs linking to resources or documentation related to the batch operation.
        #
        #   @param num_errors [Integer] The total number of errors encountered during the batch operation.
        #
        #   @param requested_at [Time] The date and time when the batch request was made.

        # The current status of the batch operation. Accepted values are: CANCELED,
        # COMPLETE, PENDING, PROCESSING.
        #
        # @see HubSpotSDK::Models::Marketing::BatchResponsePublicCampaignWithErrors#status
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
