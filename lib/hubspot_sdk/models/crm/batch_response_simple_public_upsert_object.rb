# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Crm
      class BatchResponseSimplePublicUpsertObject < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute completed_at
        #   The timestamp when the batch process was completed, in ISO 8601 format.
        #
        #   @return [Time]
        required :completed_at, Time, api_name: :completedAt

        # @!attribute results
        #
        #   @return [Array<HubSpotSDK::Models::Crm::SimplePublicUpsertObject>]
        required :results, -> { HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Crm::SimplePublicUpsertObject] }

        # @!attribute started_at
        #   The timestamp when the batch process began execution, in ISO 8601 format.
        #
        #   @return [Time]
        required :started_at, Time, api_name: :startedAt

        # @!attribute status
        #   The status of the batch processing request. Can be: "PENDING", "PROCESSING",
        #   "CANCELED", or "COMPLETE".
        #
        #   @return [Symbol, HubSpotSDK::Models::Crm::BatchResponseSimplePublicUpsertObject::Status]
        required :status, enum: -> { HubSpotSDK::Crm::BatchResponseSimplePublicUpsertObject::Status }

        # @!attribute links
        #   An object containing relevant links related to the batch request.
        #
        #   @return [Hash{Symbol=>String}, nil]
        optional :links, HubSpotSDK::Internal::Type::HashOf[String]

        # @!attribute requested_at
        #   The timestamp when the batch process was initiated, in ISO 8601 format.
        #
        #   @return [Time, nil]
        optional :requested_at, Time, api_name: :requestedAt

        # @!method initialize(completed_at:, results:, started_at:, status:, links: nil, requested_at: nil)
        #   Some parameter documentations has been truncated, see
        #   {HubSpotSDK::Models::Crm::BatchResponseSimplePublicUpsertObject} for more
        #   details.
        #
        #   Represents the result of a batch upsert operation, including the operation’s
        #   status, timestamps, and a list of successfully created or updated objects.
        #
        #   @param completed_at [Time] The timestamp when the batch process was completed, in ISO 8601 format.
        #
        #   @param results [Array<HubSpotSDK::Models::Crm::SimplePublicUpsertObject>]
        #
        #   @param started_at [Time] The timestamp when the batch process began execution, in ISO 8601 format.
        #
        #   @param status [Symbol, HubSpotSDK::Models::Crm::BatchResponseSimplePublicUpsertObject::Status] The status of the batch processing request. Can be: "PENDING", "PROCESSING", "CA
        #
        #   @param links [Hash{Symbol=>String}] An object containing relevant links related to the batch request.
        #
        #   @param requested_at [Time] The timestamp when the batch process was initiated, in ISO 8601 format.

        # The status of the batch processing request. Can be: "PENDING", "PROCESSING",
        # "CANCELED", or "COMPLETE".
        #
        # @see HubSpotSDK::Models::Crm::BatchResponseSimplePublicUpsertObject#status
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
