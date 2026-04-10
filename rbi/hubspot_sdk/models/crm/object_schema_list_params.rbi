# typed: strong

module HubSpotSDK
  module Models
    module Crm
      class ObjectSchemaListParams < HubSpotSDK::Internal::Type::BaseModel
        extend HubSpotSDK::Internal::Type::RequestParameters::Converter
        include HubSpotSDK::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Crm::ObjectSchemaListParams,
              HubSpotSDK::Internal::AnyHash
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
            request_options: HubSpotSDK::RequestOptions::OrHash
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
              request_options: HubSpotSDK::RequestOptions
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
