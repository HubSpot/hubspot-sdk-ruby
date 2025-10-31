# typed: strong

module HubspotSDK
  module Models
    module CRM
      class SimplePublicObjectInput < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::CRM::SimplePublicObjectInput,
              HubspotSDK::Internal::AnyHash
            )
          end

        # Key value pairs representing the properties of the object.
        sig { returns(T::Hash[Symbol, String]) }
        attr_accessor :properties

        # Represents the input required to create or update a CRM object, containing an
        # object with property names and their corresponding values.
        sig do
          params(properties: T::Hash[Symbol, String]).returns(T.attached_class)
        end
        def self.new(
          # Key value pairs representing the properties of the object.
          properties:
        )
        end

        sig { override.returns({ properties: T::Hash[Symbol, String] }) }
        def to_hash
        end
      end
    end
  end
end
