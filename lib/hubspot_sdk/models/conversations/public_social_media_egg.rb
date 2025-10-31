# frozen_string_literal: true

module HubspotSDK
  module Models
    module Conversations
      class PublicSocialMediaEgg < HubspotSDK::Internal::Type::BaseModel
        # @!attribute social_metadata
        #
        #   @return [HubspotSDK::Models::Conversations::SocialMetadata]
        required :social_metadata, -> { HubspotSDK::Conversations::SocialMetadata }, api_name: :socialMetadata

        # @!attribute type
        #
        #   @return [Symbol, HubspotSDK::Models::Conversations::PublicSocialMediaEgg::Type]
        required :type, enum: -> { HubspotSDK::Conversations::PublicSocialMediaEgg::Type }

        # @!method initialize(social_metadata:, type:)
        #   @param social_metadata [HubspotSDK::Models::Conversations::SocialMetadata]
        #   @param type [Symbol, HubspotSDK::Models::Conversations::PublicSocialMediaEgg::Type]

        # @see HubspotSDK::Models::Conversations::PublicSocialMediaEgg#type
        module Type
          extend HubspotSDK::Internal::Type::Enum

          SOCIAL_MEDIA_METADATA = :SOCIAL_MEDIA_METADATA

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
