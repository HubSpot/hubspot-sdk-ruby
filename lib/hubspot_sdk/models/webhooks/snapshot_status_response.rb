# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Webhooks
      # @see HubSpotSDK::Resources::Webhooks#get_journal_status
      class SnapshotStatusResponse < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The unique identifier for the snapshot operation, represented as a UUID.
        #
        #   @return [String]
        required :id, String

        # @!attribute initiated_at
        #   The timestamp indicating when the snapshot operation was initiated, represented
        #   as a Unix timestamp in milliseconds.
        #
        #   @return [Integer]
        required :initiated_at, Integer, api_name: :initiatedAt

        # @!attribute status
        #   The current status of the snapshot. Valid values include 'PENDING',
        #   'IN_PROGRESS', 'COMPLETED', 'FAILED', and 'EXPIRED'.
        #
        #   @return [Symbol, HubSpotSDK::Models::Webhooks::SnapshotStatusResponse::Status]
        required :status, enum: -> { HubSpotSDK::Webhooks::SnapshotStatusResponse::Status }

        # @!attribute completed_at
        #   The timestamp indicating when the snapshot operation was completed, represented
        #   as a Unix timestamp in milliseconds.
        #
        #   @return [Integer, nil]
        optional :completed_at, Integer, api_name: :completedAt

        # @!attribute error_code
        #   A code representing the error that occurred, if any. Possible values are
        #   'TIMEOUT', 'VALIDATION_ERROR', 'INTERNAL_ERROR', and 'PERMISSION_DENIED'.
        #
        #   @return [Symbol, HubSpotSDK::Models::Webhooks::SnapshotStatusResponse::ErrorCode, nil]
        optional :error_code,
                 enum: -> { HubSpotSDK::Webhooks::SnapshotStatusResponse::ErrorCode },
                 api_name: :errorCode

        # @!attribute message
        #   A descriptive message providing additional information about the snapshot
        #   operation or error.
        #
        #   @return [String, nil]
        optional :message, String

        # @!method initialize(id:, initiated_at:, status:, completed_at: nil, error_code: nil, message: nil)
        #   Some parameter documentations has been truncated, see
        #   {HubSpotSDK::Models::Webhooks::SnapshotStatusResponse} for more details.
        #
        #   @param id [String] The unique identifier for the snapshot operation, represented as a UUID.
        #
        #   @param initiated_at [Integer] The timestamp indicating when the snapshot operation was initiated, represented
        #
        #   @param status [Symbol, HubSpotSDK::Models::Webhooks::SnapshotStatusResponse::Status] The current status of the snapshot. Valid values include 'PENDING', 'IN_PROGRESS
        #
        #   @param completed_at [Integer] The timestamp indicating when the snapshot operation was completed, represented
        #
        #   @param error_code [Symbol, HubSpotSDK::Models::Webhooks::SnapshotStatusResponse::ErrorCode] A code representing the error that occurred, if any. Possible values are 'TIMEOU
        #
        #   @param message [String] A descriptive message providing additional information about the snapshot operat

        # The current status of the snapshot. Valid values include 'PENDING',
        # 'IN_PROGRESS', 'COMPLETED', 'FAILED', and 'EXPIRED'.
        #
        # @see HubSpotSDK::Models::Webhooks::SnapshotStatusResponse#status
        module Status
          extend HubSpotSDK::Internal::Type::Enum

          COMPLETED = :COMPLETED
          EXPIRED = :EXPIRED
          FAILED = :FAILED
          IN_PROGRESS = :IN_PROGRESS
          PENDING = :PENDING

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # A code representing the error that occurred, if any. Possible values are
        # 'TIMEOUT', 'VALIDATION_ERROR', 'INTERNAL_ERROR', and 'PERMISSION_DENIED'.
        #
        # @see HubSpotSDK::Models::Webhooks::SnapshotStatusResponse#error_code
        module ErrorCode
          extend HubSpotSDK::Internal::Type::Enum

          INTERNAL_ERROR = :INTERNAL_ERROR
          PERMISSION_DENIED = :PERMISSION_DENIED
          TIMEOUT = :TIMEOUT
          VALIDATION_ERROR = :VALIDATION_ERROR

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
