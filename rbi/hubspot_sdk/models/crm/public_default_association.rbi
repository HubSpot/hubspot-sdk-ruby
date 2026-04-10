# typed: strong

module HubSpotSDK
  module Models
    module Crm
      class PublicDefaultAssociation < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Crm::PublicDefaultAssociation,
              HubSpotSDK::Internal::AnyHash
            )
          end

        # Defines the type, direction, and details of the relationship between two CRM
        # objects.
        sig { returns(HubSpotSDK::AssociationSpec) }
        attr_reader :association_spec

        sig do
          params(association_spec: HubSpotSDK::AssociationSpec::OrHash).void
        end
        attr_writer :association_spec

        # Contains the Id of a Public Object
        sig { returns(HubSpotSDK::PublicObjectID) }
        attr_reader :from

        sig { params(from: HubSpotSDK::PublicObjectID::OrHash).void }
        attr_writer :from

        # Contains the Id of a Public Object
        sig { returns(HubSpotSDK::PublicObjectID) }
        attr_reader :to

        sig { params(to: HubSpotSDK::PublicObjectID::OrHash).void }
        attr_writer :to

        sig do
          params(
            association_spec: HubSpotSDK::AssociationSpec::OrHash,
            from: HubSpotSDK::PublicObjectID::OrHash,
            to: HubSpotSDK::PublicObjectID::OrHash
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
              association_spec: HubSpotSDK::AssociationSpec,
              from: HubSpotSDK::PublicObjectID,
              to: HubSpotSDK::PublicObjectID
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
