# typed: strong

module HubspotSDK
  module Models
    module CRM
      class FlagResponse < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(HubspotSDK::CRM::FlagResponse, HubspotSDK::Internal::AnyHash)
          end

        sig { returns(Integer) }
        attr_accessor :app_id

        sig do
          returns(HubspotSDK::CRM::FlagResponse::DefaultState::TaggedSymbol)
        end
        attr_accessor :default_state

        sig { returns(String) }
        attr_accessor :flag_name

        sig do
          returns(
            T.nilable(
              HubspotSDK::CRM::FlagResponse::OverrideState::TaggedSymbol
            )
          )
        end
        attr_reader :override_state

        sig do
          params(
            override_state:
              HubspotSDK::CRM::FlagResponse::OverrideState::OrSymbol
          ).void
        end
        attr_writer :override_state

        sig do
          params(
            app_id: Integer,
            default_state:
              HubspotSDK::CRM::FlagResponse::DefaultState::OrSymbol,
            flag_name: String,
            override_state:
              HubspotSDK::CRM::FlagResponse::OverrideState::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(app_id:, default_state:, flag_name:, override_state: nil)
        end

        sig do
          override.returns(
            {
              app_id: Integer,
              default_state:
                HubspotSDK::CRM::FlagResponse::DefaultState::TaggedSymbol,
              flag_name: String,
              override_state:
                HubspotSDK::CRM::FlagResponse::OverrideState::TaggedSymbol
            }
          )
        end
        def to_hash
        end

        module DefaultState
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, HubspotSDK::CRM::FlagResponse::DefaultState)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          OFF =
            T.let(
              :OFF,
              HubspotSDK::CRM::FlagResponse::DefaultState::TaggedSymbol
            )
          ON =
            T.let(
              :ON,
              HubspotSDK::CRM::FlagResponse::DefaultState::TaggedSymbol
            )
          ABSENT =
            T.let(
              :ABSENT,
              HubspotSDK::CRM::FlagResponse::DefaultState::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::CRM::FlagResponse::DefaultState::TaggedSymbol
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
              T.all(Symbol, HubspotSDK::CRM::FlagResponse::OverrideState)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          OFF =
            T.let(
              :OFF,
              HubspotSDK::CRM::FlagResponse::OverrideState::TaggedSymbol
            )
          ON =
            T.let(
              :ON,
              HubspotSDK::CRM::FlagResponse::OverrideState::TaggedSymbol
            )
          ABSENT =
            T.let(
              :ABSENT,
              HubspotSDK::CRM::FlagResponse::OverrideState::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::CRM::FlagResponse::OverrideState::TaggedSymbol
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
