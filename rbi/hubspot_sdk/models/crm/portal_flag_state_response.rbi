# typed: strong

module HubspotSDK
  module Models
    module Crm
      class PortalFlagStateResponse < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Crm::PortalFlagStateResponse,
              HubspotSDK::Internal::AnyHash
            )
          end

        # The ID of the app
        sig { returns(Integer) }
        attr_accessor :app_id

        # The name of the flag
        sig { returns(String) }
        attr_accessor :flag_name

        # The state of the flag for this portal
        sig do
          returns(
            HubspotSDK::Crm::PortalFlagStateResponse::FlagState::TaggedSymbol
          )
        end
        attr_accessor :flag_state

        # The ID of the portal
        sig { returns(Integer) }
        attr_accessor :portal_id

        sig do
          params(
            app_id: Integer,
            flag_name: String,
            flag_state:
              HubspotSDK::Crm::PortalFlagStateResponse::FlagState::OrSymbol,
            portal_id: Integer
          ).returns(T.attached_class)
        end
        def self.new(
          # The ID of the app
          app_id:,
          # The name of the flag
          flag_name:,
          # The state of the flag for this portal
          flag_state:,
          # The ID of the portal
          portal_id:
        )
        end

        sig do
          override.returns(
            {
              app_id: Integer,
              flag_name: String,
              flag_state:
                HubspotSDK::Crm::PortalFlagStateResponse::FlagState::TaggedSymbol,
              portal_id: Integer
            }
          )
        end
        def to_hash
        end

        # The state of the flag for this portal
        module FlagState
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, HubspotSDK::Crm::PortalFlagStateResponse::FlagState)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ABSENT =
            T.let(
              :ABSENT,
              HubspotSDK::Crm::PortalFlagStateResponse::FlagState::TaggedSymbol
            )
          OFF =
            T.let(
              :OFF,
              HubspotSDK::Crm::PortalFlagStateResponse::FlagState::TaggedSymbol
            )
          ON =
            T.let(
              :ON,
              HubspotSDK::Crm::PortalFlagStateResponse::FlagState::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Crm::PortalFlagStateResponse::FlagState::TaggedSymbol
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
