# frozen_string_literal: true

module HubspotSDK
  module Models
    module Conversations
      class UnsupportedContentAttachment < HubspotSDK::Internal::Type::BaseModel
        # @!attribute type
        #
        #   @return [Symbol, HubspotSDK::Models::Conversations::UnsupportedContentAttachment::Type]
        required :type, enum: -> { HubspotSDK::Conversations::UnsupportedContentAttachment::Type }

        # @!method initialize(type:)
        #   @param type [Symbol, HubspotSDK::Models::Conversations::UnsupportedContentAttachment::Type]

        # @see HubspotSDK::Models::Conversations::UnsupportedContentAttachment#type
        module Type
          extend HubspotSDK::Internal::Type::Enum

          UNSUPPORTED_CONTENT = :UNSUPPORTED_CONTENT

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
