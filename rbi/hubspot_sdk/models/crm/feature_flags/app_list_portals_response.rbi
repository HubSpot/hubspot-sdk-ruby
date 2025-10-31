# typed: strong

module HubspotSDK
  module Models
    module CRM
      module FeatureFlags
        class AppListPortalsResponse < HubspotSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                HubspotSDK::Models::CRM::FeatureFlags::AppListPortalsResponse,
                HubspotSDK::Internal::AnyHash
              )
            end

          sig do
            returns(
              T::Array[
                HubspotSDK::Models::CRM::FeatureFlags::AppListPortalsResponse::PortalFlagState
              ]
            )
          end
          attr_accessor :portal_flag_states

          sig do
            params(
              portal_flag_states:
                T::Array[
                  HubspotSDK::Models::CRM::FeatureFlags::AppListPortalsResponse::PortalFlagState::OrHash
                ]
            ).returns(T.attached_class)
          end
          def self.new(portal_flag_states:)
          end

          sig do
            override.returns(
              {
                portal_flag_states:
                  T::Array[
                    HubspotSDK::Models::CRM::FeatureFlags::AppListPortalsResponse::PortalFlagState
                  ]
              }
            )
          end
          def to_hash
          end

          class PortalFlagState < HubspotSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  HubspotSDK::Models::CRM::FeatureFlags::AppListPortalsResponse::PortalFlagState,
                  HubspotSDK::Internal::AnyHash
                )
              end

            sig { returns(Integer) }
            attr_accessor :app_id

            sig { returns(String) }
            attr_accessor :flag_name

            sig do
              returns(
                HubspotSDK::Models::CRM::FeatureFlags::AppListPortalsResponse::PortalFlagState::FlagState::TaggedSymbol
              )
            end
            attr_accessor :flag_state

            sig { returns(Integer) }
            attr_accessor :portal_id

            sig do
              params(
                app_id: Integer,
                flag_name: String,
                flag_state:
                  HubspotSDK::Models::CRM::FeatureFlags::AppListPortalsResponse::PortalFlagState::FlagState::OrSymbol,
                portal_id: Integer
              ).returns(T.attached_class)
            end
            def self.new(app_id:, flag_name:, flag_state:, portal_id:)
            end

            sig do
              override.returns(
                {
                  app_id: Integer,
                  flag_name: String,
                  flag_state:
                    HubspotSDK::Models::CRM::FeatureFlags::AppListPortalsResponse::PortalFlagState::FlagState::TaggedSymbol,
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
                    HubspotSDK::Models::CRM::FeatureFlags::AppListPortalsResponse::PortalFlagState::FlagState
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              OFF =
                T.let(
                  :OFF,
                  HubspotSDK::Models::CRM::FeatureFlags::AppListPortalsResponse::PortalFlagState::FlagState::TaggedSymbol
                )
              ON =
                T.let(
                  :ON,
                  HubspotSDK::Models::CRM::FeatureFlags::AppListPortalsResponse::PortalFlagState::FlagState::TaggedSymbol
                )
              ABSENT =
                T.let(
                  :ABSENT,
                  HubspotSDK::Models::CRM::FeatureFlags::AppListPortalsResponse::PortalFlagState::FlagState::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    HubspotSDK::Models::CRM::FeatureFlags::AppListPortalsResponse::PortalFlagState::FlagState::TaggedSymbol
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
