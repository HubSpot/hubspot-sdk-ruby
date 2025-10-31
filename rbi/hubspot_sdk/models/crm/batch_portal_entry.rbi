# typed: strong

module HubspotSDK
  module Models
    module CRM
      class BatchPortalEntry < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::CRM::BatchPortalEntry,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(HubspotSDK::CRM::BatchPortalEntry::FlagState::OrSymbol) }
        attr_accessor :flag_state

        sig { returns(Integer) }
        attr_accessor :portal_id

        sig do
          params(
            flag_state: HubspotSDK::CRM::BatchPortalEntry::FlagState::OrSymbol,
            portal_id: Integer
          ).returns(T.attached_class)
        end
        def self.new(flag_state:, portal_id:)
        end

        sig do
          override.returns(
            {
              flag_state:
                HubspotSDK::CRM::BatchPortalEntry::FlagState::OrSymbol,
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
              T.all(Symbol, HubspotSDK::CRM::BatchPortalEntry::FlagState)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          OFF =
            T.let(
              :OFF,
              HubspotSDK::CRM::BatchPortalEntry::FlagState::TaggedSymbol
            )
          ON =
            T.let(
              :ON,
              HubspotSDK::CRM::BatchPortalEntry::FlagState::TaggedSymbol
            )
          ABSENT =
            T.let(
              :ABSENT,
              HubspotSDK::CRM::BatchPortalEntry::FlagState::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::CRM::BatchPortalEntry::FlagState::TaggedSymbol
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
