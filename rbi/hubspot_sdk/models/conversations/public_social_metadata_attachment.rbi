# typed: strong

module HubspotSDK
  module Models
    module Conversations
      class PublicSocialMetadataAttachment < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Conversations::PublicSocialMetadataAttachment,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(HubspotSDK::Conversations::SocialMetadata) }
        attr_reader :social_metadata

        sig do
          params(
            social_metadata: HubspotSDK::Conversations::SocialMetadata::OrHash
          ).void
        end
        attr_writer :social_metadata

        sig do
          returns(
            HubspotSDK::Conversations::PublicSocialMetadataAttachment::Type::TaggedSymbol
          )
        end
        attr_accessor :type

        sig do
          params(
            social_metadata: HubspotSDK::Conversations::SocialMetadata::OrHash,
            type:
              HubspotSDK::Conversations::PublicSocialMetadataAttachment::Type::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(social_metadata:, type:)
        end

        sig do
          override.returns(
            {
              social_metadata: HubspotSDK::Conversations::SocialMetadata,
              type:
                HubspotSDK::Conversations::PublicSocialMetadataAttachment::Type::TaggedSymbol
            }
          )
        end
        def to_hash
        end

        module Type
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubspotSDK::Conversations::PublicSocialMetadataAttachment::Type
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          SOCIAL_MEDIA_METADATA =
            T.let(
              :SOCIAL_MEDIA_METADATA,
              HubspotSDK::Conversations::PublicSocialMetadataAttachment::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Conversations::PublicSocialMetadataAttachment::Type::TaggedSymbol
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
