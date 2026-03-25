# typed: strong

module HubspotSDK
  module Models
    module Crm
      class ObjectSchemaListParams < HubspotSDK::Internal::Type::BaseModel
        extend HubspotSDK::Internal::Type::RequestParameters::Converter
        include HubspotSDK::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Crm::ObjectSchemaListParams,
              HubspotSDK::Internal::AnyHash
            )
          end

        # Whether to return only results that have been archived.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :archived

        sig { params(archived: T::Boolean).void }
        attr_writer :archived

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
            archived: T::Boolean,
            include_association_definitions: T::Boolean,
            include_audit_metadata: T::Boolean,
            include_property_definitions: T::Boolean,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # Whether to return only results that have been archived.
          archived: nil,
          include_association_definitions: nil,
          include_audit_metadata: nil,
          include_property_definitions: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              archived: T::Boolean,
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
