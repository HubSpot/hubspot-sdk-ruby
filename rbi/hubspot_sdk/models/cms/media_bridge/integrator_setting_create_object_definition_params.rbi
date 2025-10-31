# typed: strong

module HubspotSDK
  module Models
    module Cms
      module MediaBridge
        class IntegratorSettingCreateObjectDefinitionParams < HubspotSDK::Internal::Type::BaseModel
          extend HubspotSDK::Internal::Type::RequestParameters::Converter
          include HubspotSDK::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                HubspotSDK::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionParams,
                HubspotSDK::Internal::AnyHash
              )
            end

          sig do
            returns(
              T::Array[
                HubspotSDK::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionParams::MediaType::OrSymbol
              ]
            )
          end
          attr_accessor :media_types

          sig do
            params(
              media_types:
                T::Array[
                  HubspotSDK::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionParams::MediaType::OrSymbol
                ],
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(media_types:, request_options: {})
          end

          sig do
            override.returns(
              {
                media_types:
                  T::Array[
                    HubspotSDK::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionParams::MediaType::OrSymbol
                  ],
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
                  HubspotSDK::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionParams::MediaType
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            VIDEO =
              T.let(
                :VIDEO,
                HubspotSDK::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionParams::MediaType::TaggedSymbol
              )
            AUDIO =
              T.let(
                :AUDIO,
                HubspotSDK::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionParams::MediaType::TaggedSymbol
              )
            DOCUMENT =
              T.let(
                :DOCUMENT,
                HubspotSDK::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionParams::MediaType::TaggedSymbol
              )
            OTHER =
              T.let(
                :OTHER,
                HubspotSDK::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionParams::MediaType::TaggedSymbol
              )
            IMAGE =
              T.let(
                :IMAGE,
                HubspotSDK::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionParams::MediaType::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  HubspotSDK::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionParams::MediaType::TaggedSymbol
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
