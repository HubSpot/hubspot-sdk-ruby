# typed: strong

module HubspotSDK
  module Models
    module CRM
      module FeatureFlags
        class PortalBatchUpsertParams < HubspotSDK::Internal::Type::BaseModel
          extend HubspotSDK::Internal::Type::RequestParameters::Converter
          include HubspotSDK::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                HubspotSDK::CRM::FeatureFlags::PortalBatchUpsertParams,
                HubspotSDK::Internal::AnyHash
              )
            end

          sig { returns(Integer) }
          attr_accessor :app_id

          sig do
            returns(
              T::Array[
                HubspotSDK::CRM::FeatureFlags::PortalBatchUpsertParams::PortalState
              ]
            )
          end
          attr_accessor :portal_states

          sig do
            params(
              app_id: Integer,
              portal_states:
                T::Array[
                  HubspotSDK::CRM::FeatureFlags::PortalBatchUpsertParams::PortalState::OrHash
                ],
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(app_id:, portal_states:, request_options: {})
          end

          sig do
            override.returns(
              {
                app_id: Integer,
                portal_states:
                  T::Array[
                    HubspotSDK::CRM::FeatureFlags::PortalBatchUpsertParams::PortalState
                  ],
                request_options: HubspotSDK::RequestOptions
              }
            )
          end
          def to_hash
          end

          class PortalState < HubspotSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  HubspotSDK::CRM::FeatureFlags::PortalBatchUpsertParams::PortalState,
                  HubspotSDK::Internal::AnyHash
                )
              end

            sig do
              returns(
                HubspotSDK::CRM::FeatureFlags::PortalBatchUpsertParams::PortalState::FlagState::OrSymbol
              )
            end
            attr_accessor :flag_state

            sig { returns(Integer) }
            attr_accessor :portal_id

            sig do
              params(
                flag_state:
                  HubspotSDK::CRM::FeatureFlags::PortalBatchUpsertParams::PortalState::FlagState::OrSymbol,
                portal_id: Integer
              ).returns(T.attached_class)
            end
            def self.new(flag_state:, portal_id:)
            end

            sig do
              override.returns(
                {
                  flag_state:
                    HubspotSDK::CRM::FeatureFlags::PortalBatchUpsertParams::PortalState::FlagState::OrSymbol,
                  portal_id: Integer
                }
              )
            end
            def to_hash
            end

            module FlagState
              extend HubspotSDK::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    HubspotSDK::CRM::FeatureFlags::PortalBatchUpsertParams::PortalState::FlagState
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              OFF =
                T.let(
                  :OFF,
                  HubspotSDK::CRM::FeatureFlags::PortalBatchUpsertParams::PortalState::FlagState::TaggedSymbol
                )
              ON =
                T.let(
                  :ON,
                  HubspotSDK::CRM::FeatureFlags::PortalBatchUpsertParams::PortalState::FlagState::TaggedSymbol
                )
              ABSENT =
                T.let(
                  :ABSENT,
                  HubspotSDK::CRM::FeatureFlags::PortalBatchUpsertParams::PortalState::FlagState::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    HubspotSDK::CRM::FeatureFlags::PortalBatchUpsertParams::PortalState::FlagState::TaggedSymbol
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
end
