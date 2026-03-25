# typed: strong

module HubspotSDK
  module Models
    module Crm
      module Objects
        class PublicDefaultAssociation < HubspotSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                HubspotSDK::Crm::Objects::PublicDefaultAssociation,
                HubspotSDK::Internal::AnyHash
              )
            end

          # Defines the type, direction, and details of the relationship between two CRM
          # objects.
          sig { returns(HubspotSDK::AssociationSpec) }
          attr_reader :association_spec

          sig do
            params(association_spec: HubspotSDK::AssociationSpec::OrHash).void
          end
          attr_writer :association_spec

          # Contains the Id of a Public Object
          sig { returns(HubspotSDK::PublicObjectID) }
          attr_reader :from

          sig { params(from: HubspotSDK::PublicObjectID::OrHash).void }
          attr_writer :from

          # Contains the Id of a Public Object
          sig { returns(HubspotSDK::PublicObjectID) }
          attr_reader :to

          sig { params(to: HubspotSDK::PublicObjectID::OrHash).void }
          attr_writer :to

          sig do
            params(
              association_spec: HubspotSDK::AssociationSpec::OrHash,
              from: HubspotSDK::PublicObjectID::OrHash,
              to: HubspotSDK::PublicObjectID::OrHash
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
                association_spec: HubspotSDK::AssociationSpec,
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
end
