# typed: strong

module HubSpotSDK
  module Models
    module Conversations
      class PublicSocialMetadataAttachment < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Conversations::PublicSocialMetadataAttachment,
              HubSpotSDK::Internal::AnyHash
            )
          end

        sig { returns(HubSpotSDK::Conversations::SocialMetadata) }
        attr_reader :social_metadata

        sig do
          params(
            social_metadata: HubSpotSDK::Conversations::SocialMetadata::OrHash
          ).void
        end
        attr_writer :social_metadata

        sig do
          returns(
            HubSpotSDK::Conversations::PublicSocialMetadataAttachment::Type::TaggedSymbol
          )
        end
        attr_accessor :type

        sig do
          params(
            social_metadata: HubSpotSDK::Conversations::SocialMetadata::OrHash,
            type:
              HubSpotSDK::Conversations::PublicSocialMetadataAttachment::Type::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(social_metadata:, type:)
        end

        sig do
          override.returns(
            {
              social_metadata: HubSpotSDK::Conversations::SocialMetadata,
              type:
                HubSpotSDK::Conversations::PublicSocialMetadataAttachment::Type::TaggedSymbol
            }
          )
        end
        def to_hash
        end

        module Type
          extend HubSpotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubSpotSDK::Conversations::PublicSocialMetadataAttachment::Type
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          SOCIAL_MEDIA_METADATA =
            T.let(
              :SOCIAL_MEDIA_METADATA,
              HubSpotSDK::Conversations::PublicSocialMetadataAttachment::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Conversations::PublicSocialMetadataAttachment::Type::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
