# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Webhooks
      # @see HubSpotSDK::Resources::Webhooks#get_journal_status
      class SnapshotStatusResponse < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute initiated_at
        #
        #   @return [Integer]
        required :initiated_at, Integer, api_name: :initiatedAt

        # @!attribute status
        #
        #   @return [Symbol, HubSpotSDK::Models::Webhooks::SnapshotStatusResponse::Status]
        required :status, enum: -> { HubSpotSDK::Webhooks::SnapshotStatusResponse::Status }

        # @!attribute completed_at
        #
        #   @return [Integer, nil]
        optional :completed_at, Integer, api_name: :completedAt

        # @!attribute error_code
        #
        #   @return [Symbol, HubSpotSDK::Models::Webhooks::SnapshotStatusResponse::ErrorCode, nil]
        optional :error_code,
                 enum: -> { HubSpotSDK::Webhooks::SnapshotStatusResponse::ErrorCode },
                 api_name: :errorCode

        # @!attribute message
        #
        #   @return [String, nil]
        optional :message, String

        # @!method initialize(id:, initiated_at:, status:, completed_at: nil, error_code: nil, message: nil)
        #   @param id [String]
        #   @param initiated_at [Integer]
        #   @param status [Symbol, HubSpotSDK::Models::Webhooks::SnapshotStatusResponse::Status]
        #   @param completed_at [Integer]
        #   @param error_code [Symbol, HubSpotSDK::Models::Webhooks::SnapshotStatusResponse::ErrorCode]
        #   @param message [String]

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
