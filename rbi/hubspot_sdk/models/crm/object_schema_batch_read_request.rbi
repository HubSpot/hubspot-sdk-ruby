# typed: strong

module HubspotSDK
  module Models
    module Crm
      class ObjectSchemaBatchReadRequest < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Crm::ObjectSchemaBatchReadRequest,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(T::Boolean) }
        attr_accessor :include_association_definitions

        sig { returns(T::Boolean) }
        attr_accessor :include_audit_metadata

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
          include_association_definitions:,
          include_audit_metadata:,
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
