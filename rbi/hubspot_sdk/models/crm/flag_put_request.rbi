# typed: strong

module HubspotSDK
  module Models
    module Crm
      class FlagPutRequest < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Crm::FlagPutRequest,
              HubspotSDK::Internal::AnyHash
            )
          end

        # The state that the flag should have if there are no overrides for a particular
        # portal
        sig { returns(HubspotSDK::Crm::FlagPutRequest::DefaultState::OrSymbol) }
        attr_accessor :default_state

        # A flag value that supercedes all other overrides, including portal-level values.
        # Mostly used for things like emergency overrides
        sig do
          returns(
            T.nilable(HubspotSDK::Crm::FlagPutRequest::OverrideState::OrSymbol)
          )
        end
        attr_reader :override_state

        sig do
          params(
            override_state:
              HubspotSDK::Crm::FlagPutRequest::OverrideState::OrSymbol
          ).void
        end
        attr_writer :override_state

        sig do
          params(
            default_state:
              HubspotSDK::Crm::FlagPutRequest::DefaultState::OrSymbol,
            override_state:
              HubspotSDK::Crm::FlagPutRequest::OverrideState::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(
          # The state that the flag should have if there are no overrides for a particular
          # portal
          default_state:,
          # A flag value that supercedes all other overrides, including portal-level values.
          # Mostly used for things like emergency overrides
          override_state: nil
        )
        end

        sig do
          override.returns(
            {
              default_state:
                HubspotSDK::Crm::FlagPutRequest::DefaultState::OrSymbol,
              override_state:
                HubspotSDK::Crm::FlagPutRequest::OverrideState::OrSymbol
            }
          )
        end
        def to_hash
        end

        # The state that the flag should have if there are no overrides for a particular
        # portal
        module DefaultState
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, HubspotSDK::Crm::FlagPutRequest::DefaultState)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ABSENT =
            T.let(
              :ABSENT,
              HubspotSDK::Crm::FlagPutRequest::DefaultState::TaggedSymbol
            )
          OFF =
            T.let(
              :OFF,
              HubspotSDK::Crm::FlagPutRequest::DefaultState::TaggedSymbol
            )
          ON =
            T.let(
              :ON,
              HubspotSDK::Crm::FlagPutRequest::DefaultState::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Crm::FlagPutRequest::DefaultState::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # A flag value that supercedes all other overrides, including portal-level values.
        # Mostly used for things like emergency overrides
        module OverrideState
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, HubspotSDK::Crm::FlagPutRequest::OverrideState)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ABSENT =
            T.let(
              :ABSENT,
              HubspotSDK::Crm::FlagPutRequest::OverrideState::TaggedSymbol
            )
          OFF =
            T.let(
              :OFF,
              HubspotSDK::Crm::FlagPutRequest::OverrideState::TaggedSymbol
            )
          ON =
            T.let(
              :ON,
              HubspotSDK::Crm::FlagPutRequest::OverrideState::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Crm::FlagPutRequest::OverrideState::TaggedSymbol
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
