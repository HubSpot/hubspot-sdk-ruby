# typed: strong

module HubSpotSDK
  module Models
    module Crm
      class FlagPutRequest < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Crm::FlagPutRequest,
              HubSpotSDK::Internal::AnyHash
            )
          end

        # The state that the flag should have if there are no overrides for a particular
        # portal
        sig { returns(HubSpotSDK::Crm::FlagPutRequest::DefaultState::OrSymbol) }
        attr_accessor :default_state

        # A flag value that supercedes all other overrides, including portal-level values.
        # Mostly used for things like emergency overrides
        sig do
          returns(
            T.nilable(HubSpotSDK::Crm::FlagPutRequest::OverrideState::OrSymbol)
          )
        end
        attr_reader :override_state

        sig do
          params(
            override_state:
              HubSpotSDK::Crm::FlagPutRequest::OverrideState::OrSymbol
          ).void
        end
        attr_writer :override_state

        sig do
          params(
            default_state:
              HubSpotSDK::Crm::FlagPutRequest::DefaultState::OrSymbol,
            override_state:
              HubSpotSDK::Crm::FlagPutRequest::OverrideState::OrSymbol
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
                HubSpotSDK::Crm::FlagPutRequest::DefaultState::OrSymbol,
              override_state:
                HubSpotSDK::Crm::FlagPutRequest::OverrideState::OrSymbol
            }
          )
        end
        def to_hash
        end

        # The state that the flag should have if there are no overrides for a particular
        # portal
        module DefaultState
          extend HubSpotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, HubSpotSDK::Crm::FlagPutRequest::DefaultState)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ABSENT =
            T.let(
              :ABSENT,
              HubSpotSDK::Crm::FlagPutRequest::DefaultState::TaggedSymbol
            )
          OFF =
            T.let(
              :OFF,
              HubSpotSDK::Crm::FlagPutRequest::DefaultState::TaggedSymbol
            )
          ON =
            T.let(
              :ON,
              HubSpotSDK::Crm::FlagPutRequest::DefaultState::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Crm::FlagPutRequest::DefaultState::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # A flag value that supercedes all other overrides, including portal-level values.
        # Mostly used for things like emergency overrides
        module OverrideState
          extend HubSpotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, HubSpotSDK::Crm::FlagPutRequest::OverrideState)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ABSENT =
            T.let(
              :ABSENT,
              HubSpotSDK::Crm::FlagPutRequest::OverrideState::TaggedSymbol
            )
          OFF =
            T.let(
              :OFF,
              HubSpotSDK::Crm::FlagPutRequest::OverrideState::TaggedSymbol
            )
          ON =
            T.let(
              :ON,
              HubSpotSDK::Crm::FlagPutRequest::OverrideState::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Crm::FlagPutRequest::OverrideState::TaggedSymbol
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
