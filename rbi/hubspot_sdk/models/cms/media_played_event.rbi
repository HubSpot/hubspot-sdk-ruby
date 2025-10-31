# typed: strong

module HubspotSDK
  module Models
    module Cms
      class MediaPlayedEvent < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Cms::MediaPlayedEvent,
              HubspotSDK::Internal::AnyHash
            )
          end

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
          returns(HubspotSDK::Cms::MediaPlayedEvent::MediaType::TaggedSymbol)
        end
        attr_accessor :media_type

        sig { returns(Integer) }
        attr_accessor :occurred_timestamp

        sig { returns(Integer) }
        attr_accessor :portal_id

        sig { returns(Integer) }
        attr_accessor :provider_id

        sig { returns(String) }
        attr_accessor :session_id

        sig { returns(HubspotSDK::Cms::MediaPlayedEvent::State::TaggedSymbol) }
        attr_accessor :state

        sig { returns(T.nilable(String)) }
        attr_reader :iframe_url

        sig { params(iframe_url: String).void }
        attr_writer :iframe_url

        sig { returns(T.nilable(String)) }
        attr_reader :media_url

        sig { params(media_url: String).void }
        attr_writer :media_url

        sig { returns(T.nilable(Integer)) }
        attr_reader :page_id

        sig { params(page_id: Integer).void }
        attr_writer :page_id

        sig { returns(T.nilable(String)) }
        attr_reader :page_name

        sig { params(page_name: String).void }
        attr_writer :page_name

        sig { returns(T.nilable(String)) }
        attr_reader :page_object_coordinates

        sig { params(page_object_coordinates: String).void }
        attr_writer :page_object_coordinates

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
            media_type: HubspotSDK::Cms::MediaPlayedEvent::MediaType::OrSymbol,
            occurred_timestamp: Integer,
            portal_id: Integer,
            provider_id: Integer,
            session_id: String,
            state: HubspotSDK::Cms::MediaPlayedEvent::State::OrSymbol,
            iframe_url: String,
            media_url: String,
            page_id: Integer,
            page_name: String,
            page_object_coordinates: String,
            page_url: String
          ).returns(T.attached_class)
        end
        def self.new(
          contact_id:,
          media_bridge_id:,
          media_bridge_object_coordinates:,
          media_bridge_object_type_id:,
          media_name:,
          media_type:,
          occurred_timestamp:,
          portal_id:,
          provider_id:,
          session_id:,
          state:,
          iframe_url: nil,
          media_url: nil,
          page_id: nil,
          page_name: nil,
          page_object_coordinates: nil,
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
                HubspotSDK::Cms::MediaPlayedEvent::MediaType::TaggedSymbol,
              occurred_timestamp: Integer,
              portal_id: Integer,
              provider_id: Integer,
              session_id: String,
              state: HubspotSDK::Cms::MediaPlayedEvent::State::TaggedSymbol,
              iframe_url: String,
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
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, HubspotSDK::Cms::MediaPlayedEvent::MediaType)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          VIDEO =
            T.let(
              :VIDEO,
              HubspotSDK::Cms::MediaPlayedEvent::MediaType::TaggedSymbol
            )
          AUDIO =
            T.let(
              :AUDIO,
              HubspotSDK::Cms::MediaPlayedEvent::MediaType::TaggedSymbol
            )
          DOCUMENT =
            T.let(
              :DOCUMENT,
              HubspotSDK::Cms::MediaPlayedEvent::MediaType::TaggedSymbol
            )
          OTHER =
            T.let(
              :OTHER,
              HubspotSDK::Cms::MediaPlayedEvent::MediaType::TaggedSymbol
            )
          IMAGE =
            T.let(
              :IMAGE,
              HubspotSDK::Cms::MediaPlayedEvent::MediaType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Cms::MediaPlayedEvent::MediaType::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        module State
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, HubspotSDK::Cms::MediaPlayedEvent::State)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          STARTED =
            T.let(
              :STARTED,
              HubspotSDK::Cms::MediaPlayedEvent::State::TaggedSymbol
            )
          VIEWED =
            T.let(
              :VIEWED,
              HubspotSDK::Cms::MediaPlayedEvent::State::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[HubspotSDK::Cms::MediaPlayedEvent::State::TaggedSymbol]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
