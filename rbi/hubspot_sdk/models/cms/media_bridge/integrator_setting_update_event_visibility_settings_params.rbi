# typed: strong

module HubspotSDK
  module Models
    module Cms
      module MediaBridge
        class IntegratorSettingUpdateEventVisibilitySettingsParams < HubspotSDK::Internal::Type::BaseModel
          extend HubspotSDK::Internal::Type::RequestParameters::Converter
          include HubspotSDK::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                HubspotSDK::Cms::MediaBridge::IntegratorSettingUpdateEventVisibilitySettingsParams,
                HubspotSDK::Internal::AnyHash
              )
            end

          sig do
            returns(
              HubspotSDK::Cms::MediaBridge::IntegratorSettingUpdateEventVisibilitySettingsParams::EventType::OrSymbol
            )
          end
          attr_accessor :event_type

          sig { returns(Integer) }
          attr_accessor :updated_at

          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :show_in_reporting

          sig { params(show_in_reporting: T::Boolean).void }
          attr_writer :show_in_reporting

          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :show_in_timeline

          sig { params(show_in_timeline: T::Boolean).void }
          attr_writer :show_in_timeline

          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :show_in_workflows

          sig { params(show_in_workflows: T::Boolean).void }
          attr_writer :show_in_workflows

          sig do
            params(
              event_type:
                HubspotSDK::Cms::MediaBridge::IntegratorSettingUpdateEventVisibilitySettingsParams::EventType::OrSymbol,
              updated_at: Integer,
              show_in_reporting: T::Boolean,
              show_in_timeline: T::Boolean,
              show_in_workflows: T::Boolean,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            event_type:,
            updated_at:,
            show_in_reporting: nil,
            show_in_timeline: nil,
            show_in_workflows: nil,
            request_options: {}
          )
          end

          sig do
            override.returns(
              {
                event_type:
                  HubspotSDK::Cms::MediaBridge::IntegratorSettingUpdateEventVisibilitySettingsParams::EventType::OrSymbol,
                updated_at: Integer,
                show_in_reporting: T::Boolean,
                show_in_timeline: T::Boolean,
                show_in_workflows: T::Boolean,
                request_options: HubspotSDK::RequestOptions
              }
            )
          end
          def to_hash
          end

          module EventType
            extend HubspotSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  HubspotSDK::Cms::MediaBridge::IntegratorSettingUpdateEventVisibilitySettingsParams::EventType
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            ALL =
              T.let(
                :ALL,
                HubspotSDK::Cms::MediaBridge::IntegratorSettingUpdateEventVisibilitySettingsParams::EventType::TaggedSymbol
              )
            MEDIA_PLAYS =
              T.let(
                :MEDIA_PLAYS,
                HubspotSDK::Cms::MediaBridge::IntegratorSettingUpdateEventVisibilitySettingsParams::EventType::TaggedSymbol
              )
            MEDIA_PLAYS_PERCENT =
              T.let(
                :MEDIA_PLAYS_PERCENT,
                HubspotSDK::Cms::MediaBridge::IntegratorSettingUpdateEventVisibilitySettingsParams::EventType::TaggedSymbol
              )
            ATTENTION_SPAN =
              T.let(
                :ATTENTION_SPAN,
                HubspotSDK::Cms::MediaBridge::IntegratorSettingUpdateEventVisibilitySettingsParams::EventType::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  HubspotSDK::Cms::MediaBridge::IntegratorSettingUpdateEventVisibilitySettingsParams::EventType::TaggedSymbol
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
