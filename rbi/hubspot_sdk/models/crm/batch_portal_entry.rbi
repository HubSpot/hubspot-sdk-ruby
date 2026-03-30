# typed: strong

module HubspotSDK
  module Models
    module Crm
      class BatchPortalEntry < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Crm::BatchPortalEntry,
              HubspotSDK::Internal::AnyHash
            )
          end

        # The flag state for this portal (e.g. ON or OFF)
        sig { returns(HubspotSDK::Crm::BatchPortalEntry::FlagState::OrSymbol) }
        attr_accessor :flag_state

        # The ID of the portal
        sig { returns(Integer) }
        attr_accessor :portal_id

        sig do
          params(
            flag_state: HubspotSDK::Crm::BatchPortalEntry::FlagState::OrSymbol,
            portal_id: Integer
          ).returns(T.attached_class)
        end
        def self.new(
          # The flag state for this portal (e.g. ON or OFF)
          flag_state:,
          # The ID of the portal
          portal_id:
        )
        end

        sig do
          override.returns(
            {
              flag_state:
                HubspotSDK::Crm::BatchPortalEntry::FlagState::OrSymbol,
              portal_id: Integer
            }
          )
        end
        def to_hash
        end

        # The flag state for this portal (e.g. ON or OFF)
        module FlagState
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, HubspotSDK::Crm::BatchPortalEntry::FlagState)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ABSENT =
            T.let(
              :ABSENT,
              HubspotSDK::Crm::BatchPortalEntry::FlagState::TaggedSymbol
            )
          OFF =
            T.let(
              :OFF,
              HubspotSDK::Crm::BatchPortalEntry::FlagState::TaggedSymbol
            )
          ON =
            T.let(
              :ON,
              HubspotSDK::Crm::BatchPortalEntry::FlagState::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Crm::BatchPortalEntry::FlagState::TaggedSymbol
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
