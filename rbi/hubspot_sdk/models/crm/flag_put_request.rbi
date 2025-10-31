# typed: strong

module HubspotSDK
  module Models
    module CRM
      class FlagPutRequest < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::CRM::FlagPutRequest,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(HubspotSDK::CRM::FlagPutRequest::DefaultState::OrSymbol) }
        attr_accessor :default_state

        sig do
          returns(
            T.nilable(HubspotSDK::CRM::FlagPutRequest::OverrideState::OrSymbol)
          )
        end
        attr_reader :override_state

        sig do
          params(
            override_state:
              HubspotSDK::CRM::FlagPutRequest::OverrideState::OrSymbol
          ).void
        end
        attr_writer :override_state

        sig do
          params(
            default_state:
              HubspotSDK::CRM::FlagPutRequest::DefaultState::OrSymbol,
            override_state:
              HubspotSDK::CRM::FlagPutRequest::OverrideState::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(default_state:, override_state: nil)
        end

        sig do
          override.returns(
            {
              default_state:
                HubspotSDK::CRM::FlagPutRequest::DefaultState::OrSymbol,
              override_state:
                HubspotSDK::CRM::FlagPutRequest::OverrideState::OrSymbol
            }
          )
        end
        def to_hash
        end

        module DefaultState
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, HubspotSDK::CRM::FlagPutRequest::DefaultState)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          OFF =
            T.let(
              :OFF,
              HubspotSDK::CRM::FlagPutRequest::DefaultState::TaggedSymbol
            )
          ON =
            T.let(
              :ON,
              HubspotSDK::CRM::FlagPutRequest::DefaultState::TaggedSymbol
            )
          ABSENT =
            T.let(
              :ABSENT,
              HubspotSDK::CRM::FlagPutRequest::DefaultState::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::CRM::FlagPutRequest::DefaultState::TaggedSymbol
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
              T.all(Symbol, HubspotSDK::CRM::FlagPutRequest::OverrideState)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          OFF =
            T.let(
              :OFF,
              HubspotSDK::CRM::FlagPutRequest::OverrideState::TaggedSymbol
            )
          ON =
            T.let(
              :ON,
              HubspotSDK::CRM::FlagPutRequest::OverrideState::TaggedSymbol
            )
          ABSENT =
            T.let(
              :ABSENT,
              HubspotSDK::CRM::FlagPutRequest::OverrideState::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::CRM::FlagPutRequest::OverrideState::TaggedSymbol
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
