# typed: strong

module HubspotSDK
  module Models
    module Conversations
      class SocialMetadata < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Conversations::SocialMetadata,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig do
          returns(
            HubspotSDK::Conversations::SocialMetadata::MediaType::OrSymbol
          )
        end
        attr_accessor :media_type

        sig { returns(T.nilable(String)) }
        attr_reader :id

        sig { params(id: String).void }
        attr_writer :id

        sig { returns(T.nilable(String)) }
        attr_reader :description

        sig { params(description: String).void }
        attr_writer :description

        sig { returns(T.nilable(String)) }
        attr_reader :media_title

        sig { params(media_title: String).void }
        attr_writer :media_title

        sig { returns(T.nilable(String)) }
        attr_reader :media_url

        sig { params(media_url: String).void }
        attr_writer :media_url

        sig { returns(T.nilable(String)) }
        attr_reader :media_url_string

        sig { params(media_url_string: String).void }
        attr_writer :media_url_string

        sig { returns(T.nilable(String)) }
        attr_reader :thumbnail_url

        sig { params(thumbnail_url: String).void }
        attr_writer :thumbnail_url

        sig do
          params(
            media_type:
              HubspotSDK::Conversations::SocialMetadata::MediaType::OrSymbol,
            id: String,
            description: String,
            media_title: String,
            media_url: String,
            media_url_string: String,
            thumbnail_url: String
          ).returns(T.attached_class)
        end
        def self.new(
          media_type:,
          id: nil,
          description: nil,
          media_title: nil,
          media_url: nil,
          media_url_string: nil,
          thumbnail_url: nil
        )
        end

        sig do
          override.returns(
            {
              media_type:
                HubspotSDK::Conversations::SocialMetadata::MediaType::OrSymbol,
              id: String,
              description: String,
              media_title: String,
              media_url: String,
              media_url_string: String,
              thumbnail_url: String
            }
          )
        end
        def to_hash
        end

        module MediaType
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubspotSDK::Conversations::SocialMetadata::MediaType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ARTICLE =
            T.let(
              :ARTICLE,
              HubspotSDK::Conversations::SocialMetadata::MediaType::TaggedSymbol
            )
          AUDIO =
            T.let(
              :AUDIO,
              HubspotSDK::Conversations::SocialMetadata::MediaType::TaggedSymbol
            )
          CAROUSEL =
            T.let(
              :CAROUSEL,
              HubspotSDK::Conversations::SocialMetadata::MediaType::TaggedSymbol
            )
          DOCUMENT =
            T.let(
              :DOCUMENT,
              HubspotSDK::Conversations::SocialMetadata::MediaType::TaggedSymbol
            )
          GIF =
            T.let(
              :GIF,
              HubspotSDK::Conversations::SocialMetadata::MediaType::TaggedSymbol
            )
          LINK =
            T.let(
              :LINK,
              HubspotSDK::Conversations::SocialMetadata::MediaType::TaggedSymbol
            )
          NONE =
            T.let(
              :NONE,
              HubspotSDK::Conversations::SocialMetadata::MediaType::TaggedSymbol
            )
          PHOTO =
            T.let(
              :PHOTO,
              HubspotSDK::Conversations::SocialMetadata::MediaType::TaggedSymbol
            )
          POLL =
            T.let(
              :POLL,
              HubspotSDK::Conversations::SocialMetadata::MediaType::TaggedSymbol
            )
          STORY =
            T.let(
              :STORY,
              HubspotSDK::Conversations::SocialMetadata::MediaType::TaggedSymbol
            )
          VIDEO =
            T.let(
              :VIDEO,
              HubspotSDK::Conversations::SocialMetadata::MediaType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Conversations::SocialMetadata::MediaType::TaggedSymbol
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
