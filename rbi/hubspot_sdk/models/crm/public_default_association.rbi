# typed: strong

module HubspotSDK
  module Models
    module Crm
      class PublicDefaultAssociation < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Crm::PublicDefaultAssociation,
              HubspotSDK::Internal::AnyHash
            )
          end

        # Defines the type, direction, and details of the relationship between two CRM
        # objects.
        sig { returns(HubspotSDK::Crm::AssociationSpec) }
        attr_reader :association_spec

        sig do
          params(
            association_spec: HubspotSDK::Crm::AssociationSpec::OrHash
          ).void
        end
        attr_writer :association_spec

        # Contains the Id of a Public Object
        sig { returns(HubspotSDK::Crm::PublicObjectID) }
        attr_reader :from

        sig { params(from: HubspotSDK::Crm::PublicObjectID::OrHash).void }
        attr_writer :from

        # Contains the Id of a Public Object
        sig { returns(HubspotSDK::Crm::PublicObjectID) }
        attr_reader :to

        sig { params(to: HubspotSDK::Crm::PublicObjectID::OrHash).void }
        attr_writer :to

        sig do
          params(
            association_spec: HubspotSDK::Crm::AssociationSpec::OrHash,
            from: HubspotSDK::Crm::PublicObjectID::OrHash,
            to: HubspotSDK::Crm::PublicObjectID::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # Defines the type, direction, and details of the relationship between two CRM
          # objects.
          association_spec:,
          # Contains the Id of a Public Object
          from:,
          # Contains the Id of a Public Object
          to:
        )
        end

        sig do
          override.returns(
            {
              association_spec: HubspotSDK::Crm::AssociationSpec,
              from: HubspotSDK::Crm::PublicObjectID,
              to: HubspotSDK::Crm::PublicObjectID
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
