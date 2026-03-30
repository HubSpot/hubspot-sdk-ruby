# typed: strong

module HubspotSDK
  module Models
    module Crm
      class FlagResponse < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(HubspotSDK::Crm::FlagResponse, HubspotSDK::Internal::AnyHash)
          end

        # The ID of the app
        sig { returns(Integer) }
        attr_accessor :app_id

        # The flag state for any portal that doesn't have an override value
        sig { returns(HubspotSDK::Crm::FlagResponse::DefaultState::OrSymbol) }
        attr_accessor :default_state

        # The name of the flag
        sig { returns(String) }
        attr_accessor :flag_name

        # An optional flag value that overrides all others for this flag name and app,
        # including portal-level values
        sig do
          returns(
            T.nilable(HubspotSDK::Crm::FlagResponse::OverrideState::OrSymbol)
          )
        end
        attr_reader :override_state

        sig do
          params(
            override_state:
              HubspotSDK::Crm::FlagResponse::OverrideState::OrSymbol
          ).void
        end
        attr_writer :override_state

        sig do
          params(
            app_id: Integer,
            default_state:
              HubspotSDK::Crm::FlagResponse::DefaultState::OrSymbol,
            flag_name: String,
            override_state:
              HubspotSDK::Crm::FlagResponse::OverrideState::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(
          # The ID of the app
          app_id:,
          # The flag state for any portal that doesn't have an override value
          default_state:,
          # The name of the flag
          flag_name:,
          # An optional flag value that overrides all others for this flag name and app,
          # including portal-level values
          override_state: nil
        )
        end

        sig do
          override.returns(
            {
              app_id: Integer,
              default_state:
                HubspotSDK::Crm::FlagResponse::DefaultState::OrSymbol,
              flag_name: String,
              override_state:
                HubspotSDK::Crm::FlagResponse::OverrideState::OrSymbol
            }
          )
        end
        def to_hash
        end

        # The flag state for any portal that doesn't have an override value
        module DefaultState
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, HubspotSDK::Crm::FlagResponse::DefaultState)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ABSENT =
            T.let(
              :ABSENT,
              HubspotSDK::Crm::FlagResponse::DefaultState::TaggedSymbol
            )
          OFF =
            T.let(
              :OFF,
              HubspotSDK::Crm::FlagResponse::DefaultState::TaggedSymbol
            )
          ON =
            T.let(
              :ON,
              HubspotSDK::Crm::FlagResponse::DefaultState::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Crm::FlagResponse::DefaultState::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # An optional flag value that overrides all others for this flag name and app,
        # including portal-level values
        module OverrideState
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, HubspotSDK::Crm::FlagResponse::OverrideState)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ABSENT =
            T.let(
              :ABSENT,
              HubspotSDK::Crm::FlagResponse::OverrideState::TaggedSymbol
            )
          OFF =
            T.let(
              :OFF,
              HubspotSDK::Crm::FlagResponse::OverrideState::TaggedSymbol
            )
          ON =
            T.let(
              :ON,
              HubspotSDK::Crm::FlagResponse::OverrideState::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Crm::FlagResponse::OverrideState::TaggedSymbol
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
