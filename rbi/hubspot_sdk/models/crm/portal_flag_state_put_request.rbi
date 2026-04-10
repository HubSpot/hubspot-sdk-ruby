# typed: strong

module HubSpotSDK
  module Models
    module Crm
      class PortalFlagStatePutRequest < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Crm::PortalFlagStatePutRequest,
              HubSpotSDK::Internal::AnyHash
            )
          end

        # The state that the given flag should be in for this portal
        sig do
          returns(
            HubSpotSDK::Crm::PortalFlagStatePutRequest::FlagState::OrSymbol
          )
        end
        attr_accessor :flag_state

        sig do
          params(
            flag_state:
              HubSpotSDK::Crm::PortalFlagStatePutRequest::FlagState::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(
          # The state that the given flag should be in for this portal
          flag_state:
        )
        end

        sig do
          override.returns(
            {
              flag_state:
                HubSpotSDK::Crm::PortalFlagStatePutRequest::FlagState::OrSymbol
            }
          )
        end
        def to_hash
        end

        # The state that the given flag should be in for this portal
        module FlagState
          extend HubSpotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubSpotSDK::Crm::PortalFlagStatePutRequest::FlagState
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ABSENT =
            T.let(
              :ABSENT,
              HubSpotSDK::Crm::PortalFlagStatePutRequest::FlagState::TaggedSymbol
            )
          OFF =
            T.let(
              :OFF,
              HubSpotSDK::Crm::PortalFlagStatePutRequest::FlagState::TaggedSymbol
            )
          ON =
            T.let(
              :ON,
              HubSpotSDK::Crm::PortalFlagStatePutRequest::FlagState::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Crm::PortalFlagStatePutRequest::FlagState::TaggedSymbol
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
