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

        sig { returns(String) }
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
            media_type: String,
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
              media_type: String,
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
      end
    end
  end
end
