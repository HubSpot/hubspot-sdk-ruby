# typed: strong

module HubSpotSDK
  module Models
    module Cms
      class MediaPlayedPercentageEvent < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Cms::MediaPlayedPercentageEvent,
              HubSpotSDK::Internal::AnyHash
            )
          end

        # The ID of the contact in HubSpot’s system that consumed the media. This can be
        # fetched using HubSpot's Get contact by usertoken (utk) API. The API also
        # supports supplying a usertoken, and will handle converting this into a contact
        # ID automatically.
        sig { returns(Integer) }
        attr_accessor :contact_id

        sig { returns(Integer) }
        attr_accessor :media_bridge_id

        sig { returns(String) }
        attr_accessor :media_bridge_object_coordinates

        sig { returns(String) }
        attr_accessor :media_bridge_object_type_id

        sig { returns(String) }
        attr_accessor :media_name

        sig do
          returns(
            HubSpotSDK::Cms::MediaPlayedPercentageEvent::MediaType::TaggedSymbol
          )
        end
        attr_accessor :media_type

        sig { returns(Integer) }
        attr_accessor :occurred_timestamp

        sig { returns(Integer) }
        attr_accessor :played_percent

        # The ID of the HubSpot account.
        sig { returns(Integer) }
        attr_accessor :portal_id

        sig { returns(Integer) }
        attr_accessor :provider_id

        sig { returns(String) }
        attr_accessor :session_id

        sig do
          returns(
            T.nilable(
              HubSpotSDK::Cms::MediaPlayedPercentageEvent::ExternalPlayContext::TaggedSymbol
            )
          )
        end
        attr_reader :external_play_context

        sig do
          params(
            external_play_context:
              HubSpotSDK::Cms::MediaPlayedPercentageEvent::ExternalPlayContext::OrSymbol
          ).void
        end
        attr_writer :external_play_context

        sig { returns(T.nilable(String)) }
        attr_reader :media_url

        sig { params(media_url: String).void }
        attr_writer :media_url

        # The content ID of the page that an event happened on, for HubSpot pages.
        # Required if the page is a HubSpot page.
        sig { returns(T.nilable(Integer)) }
        attr_reader :page_id

        sig { params(page_id: Integer).void }
        attr_writer :page_id

        # The name or title of the page that an event happened on. Required for
        # non-HubSpot pages.
        sig { returns(T.nilable(String)) }
        attr_reader :page_name

        sig { params(page_name: String).void }
        attr_writer :page_name

        sig { returns(T.nilable(String)) }
        attr_reader :page_object_coordinates

        sig { params(page_object_coordinates: String).void }
        attr_writer :page_object_coordinates

        # The URL of the page that an event happened on. Required for non-HubSpot pages.
        sig { returns(T.nilable(String)) }
        attr_reader :page_url

        sig { params(page_url: String).void }
        attr_writer :page_url

        sig do
          params(
            contact_id: Integer,
            media_bridge_id: Integer,
            media_bridge_object_coordinates: String,
            media_bridge_object_type_id: String,
            media_name: String,
            media_type:
              HubSpotSDK::Cms::MediaPlayedPercentageEvent::MediaType::OrSymbol,
            occurred_timestamp: Integer,
            played_percent: Integer,
            portal_id: Integer,
            provider_id: Integer,
            session_id: String,
            external_play_context:
              HubSpotSDK::Cms::MediaPlayedPercentageEvent::ExternalPlayContext::OrSymbol,
            media_url: String,
            page_id: Integer,
            page_name: String,
            page_object_coordinates: String,
            page_url: String
          ).returns(T.attached_class)
        end
        def self.new(
          # The ID of the contact in HubSpot’s system that consumed the media. This can be
          # fetched using HubSpot's Get contact by usertoken (utk) API. The API also
          # supports supplying a usertoken, and will handle converting this into a contact
          # ID automatically.
          contact_id:,
          media_bridge_id:,
          media_bridge_object_coordinates:,
          media_bridge_object_type_id:,
          media_name:,
          media_type:,
          occurred_timestamp:,
          played_percent:,
          # The ID of the HubSpot account.
          portal_id:,
          provider_id:,
          session_id:,
          external_play_context: nil,
          media_url: nil,
          # The content ID of the page that an event happened on, for HubSpot pages.
          # Required if the page is a HubSpot page.
          page_id: nil,
          # The name or title of the page that an event happened on. Required for
          # non-HubSpot pages.
          page_name: nil,
          page_object_coordinates: nil,
          # The URL of the page that an event happened on. Required for non-HubSpot pages.
          page_url: nil
        )
        end

        sig do
          override.returns(
            {
              contact_id: Integer,
              media_bridge_id: Integer,
              media_bridge_object_coordinates: String,
              media_bridge_object_type_id: String,
              media_name: String,
              media_type:
                HubSpotSDK::Cms::MediaPlayedPercentageEvent::MediaType::TaggedSymbol,
              occurred_timestamp: Integer,
              played_percent: Integer,
              portal_id: Integer,
              provider_id: Integer,
              session_id: String,
              external_play_context:
                HubSpotSDK::Cms::MediaPlayedPercentageEvent::ExternalPlayContext::TaggedSymbol,
              media_url: String,
              page_id: Integer,
              page_name: String,
              page_object_coordinates: String,
              page_url: String
            }
          )
        end
        def to_hash
        end

        module MediaType
          extend HubSpotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubSpotSDK::Cms::MediaPlayedPercentageEvent::MediaType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          AUDIO =
            T.let(
              :AUDIO,
              HubSpotSDK::Cms::MediaPlayedPercentageEvent::MediaType::TaggedSymbol
            )
          DOCUMENT =
            T.let(
              :DOCUMENT,
              HubSpotSDK::Cms::MediaPlayedPercentageEvent::MediaType::TaggedSymbol
            )
          IMAGE =
            T.let(
              :IMAGE,
              HubSpotSDK::Cms::MediaPlayedPercentageEvent::MediaType::TaggedSymbol
            )
          OTHER =
            T.let(
              :OTHER,
              HubSpotSDK::Cms::MediaPlayedPercentageEvent::MediaType::TaggedSymbol
            )
          VIDEO =
            T.let(
              :VIDEO,
              HubSpotSDK::Cms::MediaPlayedPercentageEvent::MediaType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Cms::MediaPlayedPercentageEvent::MediaType::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        module ExternalPlayContext
          extend HubSpotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubSpotSDK::Cms::MediaPlayedPercentageEvent::ExternalPlayContext
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          EMAIL =
            T.let(
              :EMAIL,
              HubSpotSDK::Cms::MediaPlayedPercentageEvent::ExternalPlayContext::TaggedSymbol
            )
          EXTERNAL_PAGE =
            T.let(
              :EXTERNAL_PAGE,
              HubSpotSDK::Cms::MediaPlayedPercentageEvent::ExternalPlayContext::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Cms::MediaPlayedPercentageEvent::ExternalPlayContext::TaggedSymbol
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
