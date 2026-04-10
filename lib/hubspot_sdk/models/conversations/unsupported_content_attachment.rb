# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Conversations
      class UnsupportedContentAttachment < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute type
        #
        #   @return [Symbol, HubSpotSDK::Models::Conversations::UnsupportedContentAttachment::Type]
        required :type, enum: -> { HubSpotSDK::Conversations::UnsupportedContentAttachment::Type }

        # @!method initialize(type:)
        #   @param type [Symbol, HubSpotSDK::Models::Conversations::UnsupportedContentAttachment::Type]

        # @see HubSpotSDK::Models::Conversations::UnsupportedContentAttachment#type
        module Type
          extend HubSpotSDK::Internal::Type::Enum

          UNSUPPORTED_CONTENT = :UNSUPPORTED_CONTENT

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
