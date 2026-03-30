# frozen_string_literal: true

module HubspotSDK
  module Models
    module Webhooks
      # @see HubspotSDK::Resources::Webhooks::Webhooks#get_journal_local_status
      class SnapshotStatusResponse < HubspotSDK::Internal::Type::BaseModel
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
        #   @return [Symbol, HubspotSDK::Models::Webhooks::SnapshotStatusResponse::Status]
        required :status, enum: -> { HubspotSDK::Webhooks::SnapshotStatusResponse::Status }

        # @!attribute completed_at
        #
        #   @return [Integer, nil]
        optional :completed_at, Integer, api_name: :completedAt

        # @!attribute error_code
        #
        #   @return [Symbol, HubspotSDK::Models::Webhooks::SnapshotStatusResponse::ErrorCode, nil]
        optional :error_code,
                 enum: -> { HubspotSDK::Webhooks::SnapshotStatusResponse::ErrorCode },
                 api_name: :errorCode

        # @!attribute message
        #
        #   @return [String, nil]
        optional :message, String

        # @!method initialize(id:, initiated_at:, status:, completed_at: nil, error_code: nil, message: nil)
        #   @param id [String]
        #   @param initiated_at [Integer]
        #   @param status [Symbol, HubspotSDK::Models::Webhooks::SnapshotStatusResponse::Status]
        #   @param completed_at [Integer]
        #   @param error_code [Symbol, HubspotSDK::Models::Webhooks::SnapshotStatusResponse::ErrorCode]
        #   @param message [String]

        # @see HubspotSDK::Models::Webhooks::SnapshotStatusResponse#status
        module Status
          extend HubspotSDK::Internal::Type::Enum

          COMPLETED = :COMPLETED
          EXPIRED = :EXPIRED
          FAILED = :FAILED
          IN_PROGRESS = :IN_PROGRESS
          PENDING = :PENDING

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see HubspotSDK::Models::Webhooks::SnapshotStatusResponse#error_code
        module ErrorCode
          extend HubspotSDK::Internal::Type::Enum

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
