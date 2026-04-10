# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Conversations
      class PublicUnsupportedContent < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute type
        #
        #   @return [Symbol, HubSpotSDK::Models::Conversations::PublicUnsupportedContent::Type]
        required :type, enum: -> { HubSpotSDK::Conversations::PublicUnsupportedContent::Type }

        # @!method initialize(type:)
        #   @param type [Symbol, HubSpotSDK::Models::Conversations::PublicUnsupportedContent::Type]

        # @see HubSpotSDK::Models::Conversations::PublicUnsupportedContent#type
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
