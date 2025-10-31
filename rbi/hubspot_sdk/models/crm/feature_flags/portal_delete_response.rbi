# typed: strong

module HubspotSDK
  module Models
    module CRM
      module FeatureFlags
        class PortalDeleteResponse < HubspotSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                HubspotSDK::Models::CRM::FeatureFlags::PortalDeleteResponse,
                HubspotSDK::Internal::AnyHash
              )
            end

          sig { returns(Integer) }
          attr_accessor :app_id

          sig { returns(String) }
          attr_accessor :flag_name

          sig do
            returns(
              HubspotSDK::Models::CRM::FeatureFlags::PortalDeleteResponse::FlagState::TaggedSymbol
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
                HubspotSDK::Models::CRM::FeatureFlags::PortalDeleteResponse::FlagState::OrSymbol,
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
                  HubspotSDK::Models::CRM::FeatureFlags::PortalDeleteResponse::FlagState::TaggedSymbol,
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
                  HubspotSDK::Models::CRM::FeatureFlags::PortalDeleteResponse::FlagState
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            OFF =
              T.let(
                :OFF,
                HubspotSDK::Models::CRM::FeatureFlags::PortalDeleteResponse::FlagState::TaggedSymbol
              )
            ON =
              T.let(
                :ON,
                HubspotSDK::Models::CRM::FeatureFlags::PortalDeleteResponse::FlagState::TaggedSymbol
              )
            ABSENT =
              T.let(
                :ABSENT,
                HubspotSDK::Models::CRM::FeatureFlags::PortalDeleteResponse::FlagState::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  HubspotSDK::Models::CRM::FeatureFlags::PortalDeleteResponse::FlagState::TaggedSymbol
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
