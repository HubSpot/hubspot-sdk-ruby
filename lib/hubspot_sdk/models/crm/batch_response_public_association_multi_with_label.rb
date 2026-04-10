# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Crm
      class BatchResponsePublicAssociationMultiWithLabel < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute completed_at
        #   The timestamp when the batch processing was completed, in ISO 8601 format.
        #
        #   @return [Time]
        required :completed_at, Time, api_name: :completedAt

        # @!attribute results
        #
        #   @return [Array<HubSpotSDK::Models::Crm::PublicAssociationMultiWithLabel>]
        required :results,
                 -> { HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Crm::PublicAssociationMultiWithLabel] }

        # @!attribute started_at
        #   The timestamp when the batch processing began, in ISO 8601 format.
        #
        #   @return [Time]
        required :started_at, Time, api_name: :startedAt

        # @!attribute status
        #   The status of the batch processing request: "PENDING", "PROCESSING", "CANCELED",
        #   or "COMPLETE".
        #
        #   @return [Symbol, HubSpotSDK::Models::Crm::BatchResponsePublicAssociationMultiWithLabel::Status]
        required :status, enum: -> { HubSpotSDK::Crm::BatchResponsePublicAssociationMultiWithLabel::Status }

        # @!attribute links
        #   An object containing relevant links related to the batch request.
        #
        #   @return [Hash{Symbol=>String}, nil]
        optional :links, HubSpotSDK::Internal::Type::HashOf[String]

        # @!attribute requested_at
        #   The timestamp when the batch request was initially made, in ISO 8601 format.
        #
        #   @return [Time, nil]
        optional :requested_at, Time, api_name: :requestedAt

        # @!method initialize(completed_at:, results:, started_at:, status:, links: nil, requested_at: nil)
        #   Some parameter documentations has been truncated, see
        #   {HubSpotSDK::Models::Crm::BatchResponsePublicAssociationMultiWithLabel} for more
        #   details.
        #
        #   @param completed_at [Time] The timestamp when the batch processing was completed, in ISO 8601 format.
        #
        #   @param results [Array<HubSpotSDK::Models::Crm::PublicAssociationMultiWithLabel>]
        #
        #   @param started_at [Time] The timestamp when the batch processing began, in ISO 8601 format.
        #
        #   @param status [Symbol, HubSpotSDK::Models::Crm::BatchResponsePublicAssociationMultiWithLabel::Status] The status of the batch processing request: "PENDING", "PROCESSING", "CANCELED",
        #
        #   @param links [Hash{Symbol=>String}] An object containing relevant links related to the batch request.
        #
        #   @param requested_at [Time] The timestamp when the batch request was initially made, in ISO 8601 format.

        # The status of the batch processing request: "PENDING", "PROCESSING", "CANCELED",
        # or "COMPLETE".
        #
        # @see HubSpotSDK::Models::Crm::BatchResponsePublicAssociationMultiWithLabel#status
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
