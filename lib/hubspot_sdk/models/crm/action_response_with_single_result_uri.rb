# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Crm
      # @see HubSpotSDK::Resources::Crm::Exports#get_status
      class ActionResponseWithSingleResultUri < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute completed_at
        #   The timestamp when the export was completed, in ISO 8601 format.
        #
        #   @return [Time]
        required :completed_at, Time, api_name: :completedAt

        # @!attribute started_at
        #   The timestamp when the export process started, in ISO 8601 format.
        #
        #   @return [Time]
        required :started_at, Time, api_name: :startedAt

        # @!attribute status
        #   The current status of the export, which can be PENDING, PROCESSING, COMPLETE or
        #   CANCELED.
        #
        #   @return [Symbol, HubSpotSDK::Models::Crm::ActionResponseWithSingleResultUri::Status]
        required :status, enum: -> { HubSpotSDK::Crm::ActionResponseWithSingleResultUri::Status }

        # @!attribute errors
        #
        #   @return [Array<HubSpotSDK::Models::StandardError>, nil]
        optional :errors, -> { HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::StandardError] }

        # @!attribute links
        #   A collection of related links associated with the export.
        #
        #   @return [Hash{Symbol=>String}, nil]
        optional :links, HubSpotSDK::Internal::Type::HashOf[String]

        # @!attribute num_errors
        #   The number of errors encountered during the export process.
        #
        #   @return [Integer, nil]
        optional :num_errors, Integer, api_name: :numErrors

        # @!attribute requested_at
        #   The timestamp when the export request was made, in ISO 8601 format.
        #
        #   @return [Time, nil]
        optional :requested_at, Time, api_name: :requestedAt

        # @!attribute result
        #   The URL of the resulting file if the export status is COMPLETE.
        #
        #   @return [String, nil]
        optional :result, String

        # @!method initialize(completed_at:, started_at:, status:, errors: nil, links: nil, num_errors: nil, requested_at: nil, result: nil)
        #   Some parameter documentations has been truncated, see
        #   {HubSpotSDK::Models::Crm::ActionResponseWithSingleResultUri} for more details.
        #
        #   @param completed_at [Time] The timestamp when the export was completed, in ISO 8601 format.
        #
        #   @param started_at [Time] The timestamp when the export process started, in ISO 8601 format.
        #
        #   @param status [Symbol, HubSpotSDK::Models::Crm::ActionResponseWithSingleResultUri::Status] The current status of the export, which can be PENDING, PROCESSING, COMPLETE or
        #
        #   @param errors [Array<HubSpotSDK::Models::StandardError>]
        #
        #   @param links [Hash{Symbol=>String}] A collection of related links associated with the export.
        #
        #   @param num_errors [Integer] The number of errors encountered during the export process.
        #
        #   @param requested_at [Time] The timestamp when the export request was made, in ISO 8601 format.
        #
        #   @param result [String] The URL of the resulting file if the export status is COMPLETE.

        # The current status of the export, which can be PENDING, PROCESSING, COMPLETE or
        # CANCELED.
        #
        # @see HubSpotSDK::Models::Crm::ActionResponseWithSingleResultUri#status
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
