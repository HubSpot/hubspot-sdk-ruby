# typed: strong

module HubspotSDK
  module Models
    module Crm
      class PublicAssociationsForObject < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Crm::PublicAssociationsForObject,
              HubspotSDK::Internal::AnyHash
            )
          end

        # Contains the Id of a Public Object
        sig { returns(HubspotSDK::Crm::PublicObjectID) }
        attr_reader :to

        sig { params(to: HubspotSDK::Crm::PublicObjectID::OrHash).void }
        attr_writer :to

        sig { returns(T::Array[HubspotSDK::Crm::AssociationSpec]) }
        attr_accessor :types

        sig do
          params(
            to: HubspotSDK::Crm::PublicObjectID::OrHash,
            types: T::Array[HubspotSDK::Crm::AssociationSpec::OrHash]
          ).returns(T.attached_class)
        end
        def self.new(
          # Contains the Id of a Public Object
          to:,
          types:
        )
        end

        sig do
          override.returns(
            {
              to: HubspotSDK::Crm::PublicObjectID,
              types: T::Array[HubspotSDK::Crm::AssociationSpec]
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
