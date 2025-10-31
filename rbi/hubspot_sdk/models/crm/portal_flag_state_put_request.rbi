# typed: strong

module HubspotSDK
  module Models
    module CRM
      class PortalFlagStatePutRequest < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::CRM::PortalFlagStatePutRequest,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig do
          returns(
            HubspotSDK::CRM::PortalFlagStatePutRequest::FlagState::OrSymbol
          )
        end
        attr_accessor :flag_state

        sig do
          params(
            flag_state:
              HubspotSDK::CRM::PortalFlagStatePutRequest::FlagState::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(flag_state:)
        end

        sig do
          override.returns(
            {
              flag_state:
                HubspotSDK::CRM::PortalFlagStatePutRequest::FlagState::OrSymbol
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
                HubspotSDK::CRM::PortalFlagStatePutRequest::FlagState
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          OFF =
            T.let(
              :OFF,
              HubspotSDK::CRM::PortalFlagStatePutRequest::FlagState::TaggedSymbol
            )
          ON =
            T.let(
              :ON,
              HubspotSDK::CRM::PortalFlagStatePutRequest::FlagState::TaggedSymbol
            )
          ABSENT =
            T.let(
              :ABSENT,
              HubspotSDK::CRM::PortalFlagStatePutRequest::FlagState::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::CRM::PortalFlagStatePutRequest::FlagState::TaggedSymbol
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
