# frozen_string_literal: true

module HubspotSDK
  module Models
    module Conversations
      class PublicThreadUpdateRequest < HubspotSDK::Internal::Type::BaseModel
        # @!attribute archived
        #
        #   @return [Boolean, nil]
        optional :archived, HubspotSDK::Internal::Type::Boolean

        # @!attribute status
        #
        #   @return [Symbol, HubspotSDK::Models::Conversations::PublicThreadUpdateRequest::Status, nil]
        optional :status, enum: -> { HubspotSDK::Conversations::PublicThreadUpdateRequest::Status }

        # @!method initialize(archived: nil, status: nil)
        #   @param archived [Boolean]
        #   @param status [Symbol, HubspotSDK::Models::Conversations::PublicThreadUpdateRequest::Status]

        # @see HubspotSDK::Models::Conversations::PublicThreadUpdateRequest#status
        module Status
          extend HubspotSDK::Internal::Type::Enum

          CLOSED = :CLOSED
          OPEN = :OPEN

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
