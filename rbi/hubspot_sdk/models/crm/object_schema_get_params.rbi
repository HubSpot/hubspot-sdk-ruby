# typed: strong

module HubspotSDK
  module Models
    module Crm
      class ObjectSchemaGetParams < HubspotSDK::Internal::Type::BaseModel
        extend HubspotSDK::Internal::Type::RequestParameters::Converter
        include HubspotSDK::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Crm::ObjectSchemaGetParams,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :object_type

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :include_association_definitions

        sig { params(include_association_definitions: T::Boolean).void }
        attr_writer :include_association_definitions

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :include_audit_metadata

        sig { params(include_audit_metadata: T::Boolean).void }
        attr_writer :include_audit_metadata

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :include_property_definitions

        sig { params(include_property_definitions: T::Boolean).void }
        attr_writer :include_property_definitions

        sig do
          params(
            object_type: String,
            include_association_definitions: T::Boolean,
            include_audit_metadata: T::Boolean,
            include_property_definitions: T::Boolean,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          object_type:,
          include_association_definitions: nil,
          include_audit_metadata: nil,
          include_property_definitions: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              object_type: String,
              include_association_definitions: T::Boolean,
              include_audit_metadata: T::Boolean,
              include_property_definitions: T::Boolean,
              request_options: HubspotSDK::RequestOptions
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
