# typed: strong

module HubspotSDK
  module Models
    module CRM
      class SimplePublicObjectInputForCreate < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::CRM::SimplePublicObjectInputForCreate,
              HubspotSDK::Internal::AnyHash
            )
          end

        # Key-value pairs for setting properties for the new object.
        sig { returns(T::Hash[Symbol, String]) }
        attr_accessor :properties

        sig do
          returns(
            T.nilable(T::Array[HubspotSDK::CRM::PublicAssociationsForObject])
          )
        end
        attr_reader :associations

        sig do
          params(
            associations:
              T::Array[HubspotSDK::CRM::PublicAssociationsForObject::OrHash]
          ).void
        end
        attr_writer :associations

        # Is the input object used to create a new CRM object, containing the properties
        # to be set and optional associations to link the new record with other CRM
        # objects.
        sig do
          params(
            properties: T::Hash[Symbol, String],
            associations:
              T::Array[HubspotSDK::CRM::PublicAssociationsForObject::OrHash]
          ).returns(T.attached_class)
        end
        def self.new(
          # Key-value pairs for setting properties for the new object.
          properties:,
          associations: nil
        )
        end

        sig do
          override.returns(
            {
              properties: T::Hash[Symbol, String],
              associations:
                T::Array[HubspotSDK::CRM::PublicAssociationsForObject]
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
