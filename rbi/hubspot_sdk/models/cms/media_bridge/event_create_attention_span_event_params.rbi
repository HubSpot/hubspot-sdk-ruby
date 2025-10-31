# typed: strong

module HubspotSDK
  module Models
    module Cms
      module MediaBridge
        class EventCreateAttentionSpanEventParams < HubspotSDK::Internal::Type::BaseModel
          extend HubspotSDK::Internal::Type::RequestParameters::Converter
          include HubspotSDK::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                HubspotSDK::Cms::MediaBridge::EventCreateAttentionSpanEventParams,
                HubspotSDK::Internal::AnyHash
              )
            end

          sig do
            returns(
              HubspotSDK::Cms::MediaBridge::EventCreateAttentionSpanEventParams::MediaType::OrSymbol
            )
          end
          attr_accessor :media_type

          sig { returns(Integer) }
          attr_accessor :occurred_timestamp

          sig { returns(T::Hash[Symbol, Integer]) }
          attr_accessor :raw_data_map

          sig { returns(String) }
          attr_accessor :session_id

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

          sig do
            returns(
              T.nilable(
                HubspotSDK::Cms::MediaBridge::EventCreateAttentionSpanEventParams::DerivedValues
              )
            )
          end
          attr_reader :derived_values

          sig do
            params(
              derived_values:
                HubspotSDK::Cms::MediaBridge::EventCreateAttentionSpanEventParams::DerivedValues::OrHash
            ).void
          end
          attr_writer :derived_values

          sig { returns(T.nilable(String)) }
          attr_reader :external_id

          sig { params(external_id: String).void }
          attr_writer :external_id

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

          sig { returns(T.nilable(String)) }
          attr_reader :raw_data_string

          sig { params(raw_data_string: String).void }
          attr_writer :raw_data_string

          sig do
            params(
              media_type:
                HubspotSDK::Cms::MediaBridge::EventCreateAttentionSpanEventParams::MediaType::OrSymbol,
              occurred_timestamp: Integer,
              raw_data_map: T::Hash[Symbol, Integer],
              session_id: String,
              _hsenc: String,
              contact_id: Integer,
              contact_utk: String,
              derived_values:
                HubspotSDK::Cms::MediaBridge::EventCreateAttentionSpanEventParams::DerivedValues::OrHash,
              external_id: String,
              media_bridge_id: Integer,
              media_name: String,
              media_url: String,
              page_id: Integer,
              page_name: String,
              page_url: String,
              raw_data_string: String,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            media_type:,
            occurred_timestamp:,
            raw_data_map:,
            session_id:,
            _hsenc: nil,
            contact_id: nil,
            contact_utk: nil,
            derived_values: nil,
            external_id: nil,
            media_bridge_id: nil,
            media_name: nil,
            media_url: nil,
            page_id: nil,
            page_name: nil,
            page_url: nil,
            raw_data_string: nil,
            request_options: {}
          )
          end

          sig do
            override.returns(
              {
                media_type:
                  HubspotSDK::Cms::MediaBridge::EventCreateAttentionSpanEventParams::MediaType::OrSymbol,
                occurred_timestamp: Integer,
                raw_data_map: T::Hash[Symbol, Integer],
                session_id: String,
                _hsenc: String,
                contact_id: Integer,
                contact_utk: String,
                derived_values:
                  HubspotSDK::Cms::MediaBridge::EventCreateAttentionSpanEventParams::DerivedValues,
                external_id: String,
                media_bridge_id: Integer,
                media_name: String,
                media_url: String,
                page_id: Integer,
                page_name: String,
                page_url: String,
                raw_data_string: String,
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
                  HubspotSDK::Cms::MediaBridge::EventCreateAttentionSpanEventParams::MediaType
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            VIDEO =
              T.let(
                :VIDEO,
                HubspotSDK::Cms::MediaBridge::EventCreateAttentionSpanEventParams::MediaType::TaggedSymbol
              )
            AUDIO =
              T.let(
                :AUDIO,
                HubspotSDK::Cms::MediaBridge::EventCreateAttentionSpanEventParams::MediaType::TaggedSymbol
              )
            DOCUMENT =
              T.let(
                :DOCUMENT,
                HubspotSDK::Cms::MediaBridge::EventCreateAttentionSpanEventParams::MediaType::TaggedSymbol
              )
            OTHER =
              T.let(
                :OTHER,
                HubspotSDK::Cms::MediaBridge::EventCreateAttentionSpanEventParams::MediaType::TaggedSymbol
              )
            IMAGE =
              T.let(
                :IMAGE,
                HubspotSDK::Cms::MediaBridge::EventCreateAttentionSpanEventParams::MediaType::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  HubspotSDK::Cms::MediaBridge::EventCreateAttentionSpanEventParams::MediaType::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          class DerivedValues < HubspotSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  HubspotSDK::Cms::MediaBridge::EventCreateAttentionSpanEventParams::DerivedValues,
                  HubspotSDK::Internal::AnyHash
                )
              end

            sig { returns(Float) }
            attr_accessor :total_percent_played

            sig { returns(Integer) }
            attr_accessor :total_seconds_played

            sig do
              params(
                total_percent_played: Float,
                total_seconds_played: Integer
              ).returns(T.attached_class)
            end
            def self.new(total_percent_played:, total_seconds_played:)
            end

            sig do
              override.returns(
                { total_percent_played: Float, total_seconds_played: Integer }
              )
            end
            def to_hash
            end
          end
        end
      end
    end
  end
end
