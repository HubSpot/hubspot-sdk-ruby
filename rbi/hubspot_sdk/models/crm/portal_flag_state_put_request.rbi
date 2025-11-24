# typed: strong

module HubspotSDK
  module Models
    module Crm
      class PortalFlagStatePutRequest < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Crm::PortalFlagStatePutRequest,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig do
          returns(
            HubspotSDK::Crm::PortalFlagStatePutRequest::FlagState::OrSymbol
          )
        end
        attr_accessor :flag_state

        sig do
          params(
            flag_state:
              HubspotSDK::Crm::PortalFlagStatePutRequest::FlagState::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(flag_state:)
        end

        sig do
          override.returns(
            {
              flag_state:
                HubspotSDK::Crm::PortalFlagStatePutRequest::FlagState::OrSymbol
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
                HubspotSDK::Crm::PortalFlagStatePutRequest::FlagState
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ABSENT =
            T.let(
              :ABSENT,
              HubspotSDK::Crm::PortalFlagStatePutRequest::FlagState::TaggedSymbol
            )
          OFF =
            T.let(
              :OFF,
              HubspotSDK::Crm::PortalFlagStatePutRequest::FlagState::TaggedSymbol
            )
          ON =
            T.let(
              :ON,
              HubspotSDK::Crm::PortalFlagStatePutRequest::FlagState::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Crm::PortalFlagStatePutRequest::FlagState::TaggedSymbol
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
