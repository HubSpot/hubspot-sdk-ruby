# frozen_string_literal: true

module HubspotSDK
  module Models
    module Conversations
      class PublicThreadUpdateRequest < HubspotSDK::Internal::Type::BaseModel
        # @!attribute archived
        #   Whether this thread is archived. Set to false to restore the thread.
        #
        #   @return [Boolean, nil]
        optional :archived, HubspotSDK::Internal::Type::Boolean

        # @!attribute status
        #   The thread's status: `OPEN` or `CLOSED`.
        #
        #   @return [Symbol, HubspotSDK::Models::Conversations::PublicThreadUpdateRequest::Status, nil]
        optional :status, enum: -> { HubspotSDK::Conversations::PublicThreadUpdateRequest::Status }

        # @!method initialize(archived: nil, status: nil)
        #   @param archived [Boolean] Whether this thread is archived. Set to false to restore the thread.
        #
        #   @param status [Symbol, HubspotSDK::Models::Conversations::PublicThreadUpdateRequest::Status] The thread's status: `OPEN` or `CLOSED`.

        # The thread's status: `OPEN` or `CLOSED`.
        #
        # @see HubspotSDK::Models::Conversations::PublicThreadUpdateRequest#status
        module Status
          extend HubspotSDK::Internal::Type::Enum

          OPEN = :OPEN
          CLOSED = :CLOSED

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
