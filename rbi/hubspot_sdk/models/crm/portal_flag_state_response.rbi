# typed: strong

module HubspotSDK
  module Models
    module CRM
      class PortalFlagStateResponse < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::CRM::PortalFlagStateResponse,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(Integer) }
        attr_accessor :app_id

        sig { returns(String) }
        attr_accessor :flag_name

        sig do
          returns(
            HubspotSDK::CRM::PortalFlagStateResponse::FlagState::TaggedSymbol
          )
        end
        attr_accessor :flag_state

        sig { returns(Integer) }
        attr_accessor :portal_id

        sig do
          params(
            app_id: Integer,
            flag_name: String,
            flag_state:
              HubspotSDK::CRM::PortalFlagStateResponse::FlagState::OrSymbol,
            portal_id: Integer
          ).returns(T.attached_class)
        end
        def self.new(app_id:, flag_name:, flag_state:, portal_id:)
        end

        sig do
          override.returns(
            {
              app_id: Integer,
              flag_name: String,
              flag_state:
                HubspotSDK::CRM::PortalFlagStateResponse::FlagState::TaggedSymbol,
              portal_id: Integer
            }
          )
        end
        def to_hash
        end

        module FlagState
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, HubspotSDK::CRM::PortalFlagStateResponse::FlagState)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          OFF =
            T.let(
              :OFF,
              HubspotSDK::CRM::PortalFlagStateResponse::FlagState::TaggedSymbol
            )
          ON =
            T.let(
              :ON,
              HubspotSDK::CRM::PortalFlagStateResponse::FlagState::TaggedSymbol
            )
          ABSENT =
            T.let(
              :ABSENT,
              HubspotSDK::CRM::PortalFlagStateResponse::FlagState::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::CRM::PortalFlagStateResponse::FlagState::TaggedSymbol
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
