# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Conversations
      class SocialMetadataIntegrationAttachment < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute social_metadata
        #
        #   @return [HubSpotSDK::Models::Conversations::SocialMetadata]
        required :social_metadata, -> { HubSpotSDK::Conversations::SocialMetadata }, api_name: :socialMetadata

        # @!attribute type
        #
        #   @return [Symbol, HubSpotSDK::Models::Conversations::SocialMetadataIntegrationAttachment::Type]
        required :type, enum: -> { HubSpotSDK::Conversations::SocialMetadataIntegrationAttachment::Type }

        # @!method initialize(social_metadata:, type:)
        #   @param social_metadata [HubSpotSDK::Models::Conversations::SocialMetadata]
        #   @param type [Symbol, HubSpotSDK::Models::Conversations::SocialMetadataIntegrationAttachment::Type]

        # @see HubSpotSDK::Models::Conversations::SocialMetadataIntegrationAttachment#type
        module Type
          extend HubSpotSDK::Internal::Type::Enum

          SOCIAL_MEDIA_METADATA = :SOCIAL_MEDIA_METADATA

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
