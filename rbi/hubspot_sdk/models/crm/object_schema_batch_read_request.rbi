# typed: strong

module HubSpotSDK
  module Models
    module Crm
      class ObjectSchemaBatchReadRequest < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Crm::ObjectSchemaBatchReadRequest,
              HubSpotSDK::Internal::AnyHash
            )
          end

        # Indicates whether to include association definitions in the response.
        sig { returns(T::Boolean) }
        attr_accessor :include_association_definitions

        # Indicates whether to include audit metadata in the response.
        sig { returns(T::Boolean) }
        attr_accessor :include_audit_metadata

        # Indicates whether to include property definitions in the response.
        sig { returns(T::Boolean) }
        attr_accessor :include_property_definitions

        sig { returns(T::Array[String]) }
        attr_accessor :inputs

        sig do
          params(
            include_association_definitions: T::Boolean,
            include_audit_metadata: T::Boolean,
            include_property_definitions: T::Boolean,
            inputs: T::Array[String]
          ).returns(T.attached_class)
        end
        def self.new(
          # Indicates whether to include association definitions in the response.
          include_association_definitions:,
          # Indicates whether to include audit metadata in the response.
          include_audit_metadata:,
          # Indicates whether to include property definitions in the response.
          include_property_definitions:,
          inputs:
        )
        end

        sig do
          override.returns(
            {
              include_association_definitions: T::Boolean,
              include_audit_metadata: T::Boolean,
              include_property_definitions: T::Boolean,
              inputs: T::Array[String]
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
