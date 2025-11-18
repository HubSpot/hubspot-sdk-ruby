# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      class BatchResponseSimplePublicUpsertObject < HubspotSDK::Internal::Type::BaseModel
        # @!attribute completed_at
        #   The timestamp when the batch process was completed, in ISO 8601 format.
        #
        #   @return [Time]
        required :completed_at, Time, api_name: :completedAt

        # @!attribute results
        #
        #   @return [Array<HubspotSDK::Models::Crm::SimplePublicUpsertObject>]
        required :results, -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Crm::SimplePublicUpsertObject] }

        # @!attribute started_at
        #   The timestamp when the batch process began execution, in ISO 8601 format.
        #
        #   @return [Time]
        required :started_at, Time, api_name: :startedAt

        # @!attribute status
        #   The status of the batch processing request. Can be: "PENDING", "PROCESSING",
        #   "CANCELED", or "COMPLETE".
        #
        #   @return [Symbol, HubspotSDK::Models::Crm::BatchResponseSimplePublicUpsertObject::Status]
        required :status, enum: -> { HubspotSDK::Crm::BatchResponseSimplePublicUpsertObject::Status }

        # @!attribute errors
        #
        #   @return [Array<HubspotSDK::Models::StandardError>, nil]
        optional :errors, -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::StandardError] }

        # @!attribute links
        #   An object containing relevant links related to the batch request.
        #
        #   @return [Hash{Symbol=>String}, nil]
        optional :links, HubspotSDK::Internal::Type::HashOf[String]

        # @!attribute num_errors
        #   The number of errors
        #
        #   @return [Integer, nil]
        optional :num_errors, Integer, api_name: :numErrors

        # @!attribute requested_at
        #   The timestamp when the batch process was initiated, in ISO 8601 format.
        #
        #   @return [Time, nil]
        optional :requested_at, Time, api_name: :requestedAt

        # @!method initialize(completed_at:, results:, started_at:, status:, errors: nil, links: nil, num_errors: nil, requested_at: nil)
        #   Some parameter documentations has been truncated, see
        #   {HubspotSDK::Models::Crm::BatchResponseSimplePublicUpsertObject} for more
        #   details.
        #
        #   Represents the result of a batch upsert operation, including the operation’s
        #   status, timestamps, and a list of successfully created or updated objects.
        #
        #   @param completed_at [Time] The timestamp when the batch process was completed, in ISO 8601 format.
        #
        #   @param results [Array<HubspotSDK::Models::Crm::SimplePublicUpsertObject>]
        #
        #   @param started_at [Time] The timestamp when the batch process began execution, in ISO 8601 format.
        #
        #   @param status [Symbol, HubspotSDK::Models::Crm::BatchResponseSimplePublicUpsertObject::Status] The status of the batch processing request. Can be: "PENDING", "PROCESSING", "CA
        #
        #   @param errors [Array<HubspotSDK::Models::StandardError>]
        #
        #   @param links [Hash{Symbol=>String}] An object containing relevant links related to the batch request.
        #
        #   @param num_errors [Integer] The number of errors
        #
        #   @param requested_at [Time] The timestamp when the batch process was initiated, in ISO 8601 format.

        # The status of the batch processing request. Can be: "PENDING", "PROCESSING",
        # "CANCELED", or "COMPLETE".
        #
        # @see HubspotSDK::Models::Crm::BatchResponseSimplePublicUpsertObject#status
        module Status
          extend HubspotSDK::Internal::Type::Enum

          PENDING = :PENDING
          PROCESSING = :PROCESSING
          CANCELED = :CANCELED
          COMPLETE = :COMPLETE

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
