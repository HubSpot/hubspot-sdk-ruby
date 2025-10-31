# typed: strong

module HubspotSDK
  module Models
    module Cms
      module MediaBridge
        class EventCreateMediaPlayedEventParams < HubspotSDK::Internal::Type::BaseModel
          extend HubspotSDK::Internal::Type::RequestParameters::Converter
          include HubspotSDK::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                HubspotSDK::Cms::MediaBridge::EventCreateMediaPlayedEventParams,
                HubspotSDK::Internal::AnyHash
              )
            end

          sig do
            returns(
              HubspotSDK::Cms::MediaBridge::EventCreateMediaPlayedEventParams::MediaType::OrSymbol
            )
          end
          attr_accessor :media_type

          sig { returns(Integer) }
          attr_accessor :occurred_timestamp

          sig { returns(String) }
          attr_accessor :session_id

          sig do
            returns(
              HubspotSDK::Cms::MediaBridge::EventCreateMediaPlayedEventParams::State::OrSymbol
            )
          end
          attr_accessor :state

          sig { returns(T.nilable(String)) }
          attr_reader :_hsenc

          sig { params(_hsenc: String).void }
          attr_writer :_hsenc

          sig { returns(T.nilable(Integer)) }
          attr_reader :contact_id

          sig { params(contact_id: Integer).void }
          attr_writer :contact_id

          sig { returns(T.nilable(String)) }
          attr_reader :contact_utk

          sig { params(contact_utk: String).void }
          attr_writer :contact_utk

          sig { returns(T.nilable(String)) }
          attr_reader :external_id

          sig { params(external_id: String).void }
          attr_writer :external_id

          sig { returns(T.nilable(String)) }
          attr_reader :iframe_url

          sig { params(iframe_url: String).void }
          attr_writer :iframe_url

          sig { returns(T.nilable(Integer)) }
          attr_reader :media_bridge_id

          sig { params(media_bridge_id: Integer).void }
          attr_writer :media_bridge_id

          sig { returns(T.nilable(String)) }
          attr_reader :media_name

          sig { params(media_name: String).void }
          attr_writer :media_name

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
          attr_reader :page_url

          sig { params(page_url: String).void }
          attr_writer :page_url

          sig do
            params(
              media_type:
                HubspotSDK::Cms::MediaBridge::EventCreateMediaPlayedEventParams::MediaType::OrSymbol,
              occurred_timestamp: Integer,
              session_id: String,
              state:
                HubspotSDK::Cms::MediaBridge::EventCreateMediaPlayedEventParams::State::OrSymbol,
              _hsenc: String,
              contact_id: Integer,
              contact_utk: String,
              external_id: String,
              iframe_url: String,
              media_bridge_id: Integer,
              media_name: String,
              media_url: String,
              page_id: Integer,
              page_name: String,
              page_url: String,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            media_type:,
            occurred_timestamp:,
            session_id:,
            state:,
            _hsenc: nil,
            contact_id: nil,
            contact_utk: nil,
            external_id: nil,
            iframe_url: nil,
            media_bridge_id: nil,
            media_name: nil,
            media_url: nil,
            page_id: nil,
            page_name: nil,
            page_url: nil,
            request_options: {}
          )
          end

          sig do
            override.returns(
              {
                media_type:
                  HubspotSDK::Cms::MediaBridge::EventCreateMediaPlayedEventParams::MediaType::OrSymbol,
                occurred_timestamp: Integer,
                session_id: String,
                state:
                  HubspotSDK::Cms::MediaBridge::EventCreateMediaPlayedEventParams::State::OrSymbol,
                _hsenc: String,
                contact_id: Integer,
                contact_utk: String,
                external_id: String,
                iframe_url: String,
                media_bridge_id: Integer,
                media_name: String,
                media_url: String,
                page_id: Integer,
                page_name: String,
                page_url: String,
                request_options: HubspotSDK::RequestOptions
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
                  HubspotSDK::Cms::MediaBridge::EventCreateMediaPlayedEventParams::MediaType
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            VIDEO =
              T.let(
                :VIDEO,
                HubspotSDK::Cms::MediaBridge::EventCreateMediaPlayedEventParams::MediaType::TaggedSymbol
              )
            AUDIO =
              T.let(
                :AUDIO,
                HubspotSDK::Cms::MediaBridge::EventCreateMediaPlayedEventParams::MediaType::TaggedSymbol
              )
            DOCUMENT =
              T.let(
                :DOCUMENT,
                HubspotSDK::Cms::MediaBridge::EventCreateMediaPlayedEventParams::MediaType::TaggedSymbol
              )
            OTHER =
              T.let(
                :OTHER,
                HubspotSDK::Cms::MediaBridge::EventCreateMediaPlayedEventParams::MediaType::TaggedSymbol
              )
            IMAGE =
              T.let(
                :IMAGE,
                HubspotSDK::Cms::MediaBridge::EventCreateMediaPlayedEventParams::MediaType::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  HubspotSDK::Cms::MediaBridge::EventCreateMediaPlayedEventParams::MediaType::TaggedSymbol
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
                T.all(
                  Symbol,
                  HubspotSDK::Cms::MediaBridge::EventCreateMediaPlayedEventParams::State
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            STARTED =
              T.let(
                :STARTED,
                HubspotSDK::Cms::MediaBridge::EventCreateMediaPlayedEventParams::State::TaggedSymbol
              )
            VIEWED =
              T.let(
                :VIEWED,
                HubspotSDK::Cms::MediaBridge::EventCreateMediaPlayedEventParams::State::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  HubspotSDK::Cms::MediaBridge::EventCreateMediaPlayedEventParams::State::TaggedSymbol
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
end
