# typed: strong

module HubspotSDK
  module Models
    module CRM
      module FeatureFlags
        class PortalUpdateParams < HubspotSDK::Internal::Type::BaseModel
          extend HubspotSDK::Internal::Type::RequestParameters::Converter
          include HubspotSDK::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                HubspotSDK::CRM::FeatureFlags::PortalUpdateParams,
                HubspotSDK::Internal::AnyHash
              )
            end

          sig { returns(Integer) }
          attr_accessor :app_id

          sig { returns(String) }
          attr_accessor :flag_name

          sig do
            returns(
              HubspotSDK::CRM::FeatureFlags::PortalUpdateParams::FlagState::OrSymbol
            )
          end
          attr_accessor :flag_state

          sig do
            params(
              app_id: Integer,
              flag_name: String,
              flag_state:
                HubspotSDK::CRM::FeatureFlags::PortalUpdateParams::FlagState::OrSymbol,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(app_id:, flag_name:, flag_state:, request_options: {})
          end

          sig do
            override.returns(
              {
                app_id: Integer,
                flag_name: String,
                flag_state:
                  HubspotSDK::CRM::FeatureFlags::PortalUpdateParams::FlagState::OrSymbol,
                request_options: HubspotSDK::RequestOptions
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
                  HubspotSDK::CRM::FeatureFlags::PortalUpdateParams::FlagState
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            OFF =
              T.let(
                :OFF,
                HubspotSDK::CRM::FeatureFlags::PortalUpdateParams::FlagState::TaggedSymbol
              )
            ON =
              T.let(
                :ON,
                HubspotSDK::CRM::FeatureFlags::PortalUpdateParams::FlagState::TaggedSymbol
              )
            ABSENT =
              T.let(
                :ABSENT,
                HubspotSDK::CRM::FeatureFlags::PortalUpdateParams::FlagState::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  HubspotSDK::CRM::FeatureFlags::PortalUpdateParams::FlagState::TaggedSymbol
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
