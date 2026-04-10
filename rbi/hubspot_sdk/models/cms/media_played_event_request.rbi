# typed: strong

module HubSpotSDK
  module Models
    module Cms
      class MediaPlayedEventRequest < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Cms::MediaPlayedEventRequest,
              HubSpotSDK::Internal::AnyHash
            )
          end

        sig do
          returns(HubSpotSDK::Cms::MediaPlayedEventRequest::MediaType::OrSymbol)
        end
        attr_accessor :media_type

        sig { returns(Integer) }
        attr_accessor :occurred_timestamp

        sig { returns(String) }
        attr_accessor :session_id

        sig do
          returns(HubSpotSDK::Cms::MediaPlayedEventRequest::State::OrSymbol)
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

        sig do
          returns(
            T.nilable(
              HubSpotSDK::Cms::MediaPlayedEventRequest::ExternalPlayContext::OrSymbol
            )
          )
        end
        attr_reader :external_play_context

        sig do
          params(
            external_play_context:
              HubSpotSDK::Cms::MediaPlayedEventRequest::ExternalPlayContext::OrSymbol
          ).void
        end
        attr_writer :external_play_context

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
              HubSpotSDK::Cms::MediaPlayedEventRequest::MediaType::OrSymbol,
            occurred_timestamp: Integer,
            session_id: String,
            state: HubSpotSDK::Cms::MediaPlayedEventRequest::State::OrSymbol,
            _hsenc: String,
            contact_id: Integer,
            contact_utk: String,
            external_id: String,
            external_play_context:
              HubSpotSDK::Cms::MediaPlayedEventRequest::ExternalPlayContext::OrSymbol,
            iframe_url: String,
            media_bridge_id: Integer,
            media_name: String,
            media_url: String,
            page_id: Integer,
            page_name: String,
            page_url: String
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
          external_play_context: nil,
          iframe_url: nil,
          media_bridge_id: nil,
          media_name: nil,
          media_url: nil,
          page_id: nil,
          page_name: nil,
          page_url: nil
        )
        end

        sig do
          override.returns(
            {
              media_type:
                HubSpotSDK::Cms::MediaPlayedEventRequest::MediaType::OrSymbol,
              occurred_timestamp: Integer,
              session_id: String,
              state: HubSpotSDK::Cms::MediaPlayedEventRequest::State::OrSymbol,
              _hsenc: String,
              contact_id: Integer,
              contact_utk: String,
              external_id: String,
              external_play_context:
                HubSpotSDK::Cms::MediaPlayedEventRequest::ExternalPlayContext::OrSymbol,
              iframe_url: String,
              media_bridge_id: Integer,
              media_name: String,
              media_url: String,
              page_id: Integer,
              page_name: String,
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
              T.all(Symbol, HubSpotSDK::Cms::MediaPlayedEventRequest::MediaType)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          AUDIO =
            T.let(
              :AUDIO,
              HubSpotSDK::Cms::MediaPlayedEventRequest::MediaType::TaggedSymbol
            )
          DOCUMENT =
            T.let(
              :DOCUMENT,
              HubSpotSDK::Cms::MediaPlayedEventRequest::MediaType::TaggedSymbol
            )
          IMAGE =
            T.let(
              :IMAGE,
              HubSpotSDK::Cms::MediaPlayedEventRequest::MediaType::TaggedSymbol
            )
          OTHER =
            T.let(
              :OTHER,
              HubSpotSDK::Cms::MediaPlayedEventRequest::MediaType::TaggedSymbol
            )
          VIDEO =
            T.let(
              :VIDEO,
              HubSpotSDK::Cms::MediaPlayedEventRequest::MediaType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Cms::MediaPlayedEventRequest::MediaType::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        module State
          extend HubSpotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, HubSpotSDK::Cms::MediaPlayedEventRequest::State)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          STARTED =
            T.let(
              :STARTED,
              HubSpotSDK::Cms::MediaPlayedEventRequest::State::TaggedSymbol
            )
          VIEWED =
            T.let(
              :VIEWED,
              HubSpotSDK::Cms::MediaPlayedEventRequest::State::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Cms::MediaPlayedEventRequest::State::TaggedSymbol
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
                HubSpotSDK::Cms::MediaPlayedEventRequest::ExternalPlayContext
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          EMAIL =
            T.let(
              :EMAIL,
              HubSpotSDK::Cms::MediaPlayedEventRequest::ExternalPlayContext::TaggedSymbol
            )
          EXTERNAL_PAGE =
            T.let(
              :EXTERNAL_PAGE,
              HubSpotSDK::Cms::MediaPlayedEventRequest::ExternalPlayContext::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Cms::MediaPlayedEventRequest::ExternalPlayContext::TaggedSymbol
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
