# typed: strong

module HubspotSDK
  module Models
    module Cms
      class MediaBridgeObject < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Cms::MediaBridgeObject,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :id

        sig { returns(Time) }
        attr_accessor :created_at

        sig do
          returns(HubspotSDK::Cms::MediaBridgeObject::MediaType::TaggedSymbol)
        end
        attr_accessor :media_type

        sig { returns(String) }
        attr_accessor :title

        sig { returns(Time) }
        attr_accessor :updated_at

        sig { returns(T.nilable(String)) }
        attr_reader :details_page_link

        sig { params(details_page_link: String).void }
        attr_writer :details_page_link

        sig { returns(T.nilable(Integer)) }
        attr_reader :duration

        sig { params(duration: Integer).void }
        attr_writer :duration

        sig { returns(T.nilable(String)) }
        attr_reader :external_id

        sig { params(external_id: String).void }
        attr_writer :external_id

        sig { returns(T.nilable(String)) }
        attr_reader :file_url

        sig { params(file_url: String).void }
        attr_writer :file_url

        sig { returns(T.nilable(String)) }
        attr_reader :oembed_url

        sig { params(oembed_url: String).void }
        attr_writer :oembed_url

        sig { returns(T.nilable(String)) }
        attr_reader :poster_url

        sig { params(poster_url: String).void }
        attr_writer :poster_url

        sig { returns(T.nilable(String)) }
        attr_reader :thumbnail_url

        sig { params(thumbnail_url: String).void }
        attr_writer :thumbnail_url

        sig { returns(T.nilable(HubspotSDK::Cms::VideoObject)) }
        attr_reader :video

        sig { params(video: HubspotSDK::Cms::VideoObject::OrHash).void }
        attr_writer :video

        sig do
          params(
            id: String,
            created_at: Time,
            media_type: HubspotSDK::Cms::MediaBridgeObject::MediaType::OrSymbol,
            title: String,
            updated_at: Time,
            details_page_link: String,
            duration: Integer,
            external_id: String,
            file_url: String,
            oembed_url: String,
            poster_url: String,
            thumbnail_url: String,
            video: HubspotSDK::Cms::VideoObject::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          id:,
          created_at:,
          media_type:,
          title:,
          updated_at:,
          details_page_link: nil,
          duration: nil,
          external_id: nil,
          file_url: nil,
          oembed_url: nil,
          poster_url: nil,
          thumbnail_url: nil,
          video: nil
        )
        end

        sig do
          override.returns(
            {
              id: String,
              created_at: Time,
              media_type:
                HubspotSDK::Cms::MediaBridgeObject::MediaType::TaggedSymbol,
              title: String,
              updated_at: Time,
              details_page_link: String,
              duration: Integer,
              external_id: String,
              file_url: String,
              oembed_url: String,
              poster_url: String,
              thumbnail_url: String,
              video: HubspotSDK::Cms::VideoObject
            }
          )
        end
        def to_hash
        end

        module MediaType
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, HubspotSDK::Cms::MediaBridgeObject::MediaType)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          AUDIO =
            T.let(
              :AUDIO,
              HubspotSDK::Cms::MediaBridgeObject::MediaType::TaggedSymbol
            )
          DOCUMENT =
            T.let(
              :DOCUMENT,
              HubspotSDK::Cms::MediaBridgeObject::MediaType::TaggedSymbol
            )
          IMAGE =
            T.let(
              :IMAGE,
              HubspotSDK::Cms::MediaBridgeObject::MediaType::TaggedSymbol
            )
          OTHER =
            T.let(
              :OTHER,
              HubspotSDK::Cms::MediaBridgeObject::MediaType::TaggedSymbol
            )
          VIDEO =
            T.let(
              :VIDEO,
              HubspotSDK::Cms::MediaBridgeObject::MediaType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Cms::MediaBridgeObject::MediaType::TaggedSymbol
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
