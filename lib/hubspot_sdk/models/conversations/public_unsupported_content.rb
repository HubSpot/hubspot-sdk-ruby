# frozen_string_literal: true

module HubspotSDK
  module Models
    module Conversations
      class PublicUnsupportedContent < HubspotSDK::Internal::Type::BaseModel
        # @!attribute type
        #
        #   @return [Symbol, HubspotSDK::Models::Conversations::PublicUnsupportedContent::Type]
        required :type, enum: -> { HubspotSDK::Conversations::PublicUnsupportedContent::Type }

        # @!method initialize(type:)
        #   @param type [Symbol, HubspotSDK::Models::Conversations::PublicUnsupportedContent::Type]

        # @see HubspotSDK::Models::Conversations::PublicUnsupportedContent#type
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
