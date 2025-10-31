# typed: strong

module HubspotSDK
  module Models
    module CRM
      class PublicDefaultAssociation < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::CRM::PublicDefaultAssociation,
              HubspotSDK::Internal::AnyHash
            )
          end

        # Defines the type, direction, and details of the relationship between two CRM
        # objects.
        sig { returns(HubspotSDK::CRM::Associations::AssociationSpec1) }
        attr_reader :association_spec

        sig do
          params(
            association_spec:
              HubspotSDK::CRM::Associations::AssociationSpec1::OrHash
          ).void
        end
        attr_writer :association_spec

        sig { returns(HubspotSDK::PublicObjectID) }
        attr_reader :from

        sig { params(from: HubspotSDK::PublicObjectID::OrHash).void }
        attr_writer :from

        sig { returns(HubspotSDK::PublicObjectID) }
        attr_reader :to

        sig { params(to: HubspotSDK::PublicObjectID::OrHash).void }
        attr_writer :to

        sig do
          params(
            association_spec:
              HubspotSDK::CRM::Associations::AssociationSpec1::OrHash,
            from: HubspotSDK::PublicObjectID::OrHash,
            to: HubspotSDK::PublicObjectID::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # Defines the type, direction, and details of the relationship between two CRM
          # objects.
          association_spec:,
          from:,
          to:
        )
        end

        sig do
          override.returns(
            {
              association_spec: HubspotSDK::CRM::Associations::AssociationSpec1,
              from: HubspotSDK::PublicObjectID,
              to: HubspotSDK::PublicObjectID
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
