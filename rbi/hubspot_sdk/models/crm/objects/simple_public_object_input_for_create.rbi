# typed: strong

module HubspotSDK
  module Models
    module Crm
      module Objects
        class SimplePublicObjectInputForCreate < HubspotSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                HubspotSDK::Crm::Objects::SimplePublicObjectInputForCreate,
                HubspotSDK::Internal::AnyHash
              )
            end

          sig do
            returns(T::Array[HubspotSDK::Crm::PublicAssociationsForObject])
          end
          attr_accessor :associations

          # Key-value pairs for setting properties for the new object.
          sig { returns(T::Hash[Symbol, String]) }
          attr_accessor :properties

          # Is the input object used to create a new CRM object, containing the properties
          # to be set and optional associations to link the new record with other CRM
          # objects.
          sig do
            params(
              associations:
                T::Array[HubspotSDK::Crm::PublicAssociationsForObject::OrHash],
              properties: T::Hash[Symbol, String]
            ).returns(T.attached_class)
          end
          def self.new(
            associations:,
            # Key-value pairs for setting properties for the new object.
            properties:
          )
          end

          sig do
            override.returns(
              {
                associations:
                  T::Array[HubspotSDK::Crm::PublicAssociationsForObject],
                properties: T::Hash[Symbol, String]
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
