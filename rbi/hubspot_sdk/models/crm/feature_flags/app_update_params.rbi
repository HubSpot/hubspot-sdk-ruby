# typed: strong

module HubspotSDK
  module Models
    module CRM
      module FeatureFlags
        class AppUpdateParams < HubspotSDK::Internal::Type::BaseModel
          extend HubspotSDK::Internal::Type::RequestParameters::Converter
          include HubspotSDK::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                HubspotSDK::CRM::FeatureFlags::AppUpdateParams,
                HubspotSDK::Internal::AnyHash
              )
            end

          sig { returns(Integer) }
          attr_accessor :app_id

          sig do
            returns(
              HubspotSDK::CRM::FeatureFlags::AppUpdateParams::DefaultState::OrSymbol
            )
          end
          attr_accessor :default_state

          sig do
            returns(
              T.nilable(
                HubspotSDK::CRM::FeatureFlags::AppUpdateParams::OverrideState::OrSymbol
              )
            )
          end
          attr_reader :override_state

          sig do
            params(
              override_state:
                HubspotSDK::CRM::FeatureFlags::AppUpdateParams::OverrideState::OrSymbol
            ).void
          end
          attr_writer :override_state

          sig do
            params(
              app_id: Integer,
              default_state:
                HubspotSDK::CRM::FeatureFlags::AppUpdateParams::DefaultState::OrSymbol,
              override_state:
                HubspotSDK::CRM::FeatureFlags::AppUpdateParams::OverrideState::OrSymbol,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            app_id:,
            default_state:,
            override_state: nil,
            request_options: {}
          )
          end

          sig do
            override.returns(
              {
                app_id: Integer,
                default_state:
                  HubspotSDK::CRM::FeatureFlags::AppUpdateParams::DefaultState::OrSymbol,
                override_state:
                  HubspotSDK::CRM::FeatureFlags::AppUpdateParams::OverrideState::OrSymbol,
                request_options: HubspotSDK::RequestOptions
              }
            )
          end
          def to_hash
          end

          module DefaultState
            extend HubspotSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  HubspotSDK::CRM::FeatureFlags::AppUpdateParams::DefaultState
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            OFF =
              T.let(
                :OFF,
                HubspotSDK::CRM::FeatureFlags::AppUpdateParams::DefaultState::TaggedSymbol
              )
            ON =
              T.let(
                :ON,
                HubspotSDK::CRM::FeatureFlags::AppUpdateParams::DefaultState::TaggedSymbol
              )
            ABSENT =
              T.let(
                :ABSENT,
                HubspotSDK::CRM::FeatureFlags::AppUpdateParams::DefaultState::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  HubspotSDK::CRM::FeatureFlags::AppUpdateParams::DefaultState::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          module OverrideState
            extend HubspotSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  HubspotSDK::CRM::FeatureFlags::AppUpdateParams::OverrideState
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            OFF =
              T.let(
                :OFF,
                HubspotSDK::CRM::FeatureFlags::AppUpdateParams::OverrideState::TaggedSymbol
              )
            ON =
              T.let(
                :ON,
                HubspotSDK::CRM::FeatureFlags::AppUpdateParams::OverrideState::TaggedSymbol
              )
            ABSENT =
              T.let(
                :ABSENT,
                HubspotSDK::CRM::FeatureFlags::AppUpdateParams::OverrideState::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  HubspotSDK::CRM::FeatureFlags::AppUpdateParams::OverrideState::TaggedSymbol
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
