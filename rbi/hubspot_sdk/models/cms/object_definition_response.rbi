# typed: strong

module HubspotSDK
  module Models
    module Cms
      class ObjectDefinitionResponse < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Cms::ObjectDefinitionResponse,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :object_type_id

        sig { returns(String) }
        attr_accessor :object_type_name

        sig { returns(T::Array[HubspotSDK::Cms::PropertyDefinition]) }
        attr_accessor :properties

        sig { returns(T::Array[HubspotSDK::Cms::GroupView]) }
        attr_accessor :property_groups

        sig { returns(T.nilable(HubspotSDK::Cms::InboundDBObjectType)) }
        attr_reader :schema

        sig do
          params(schema: HubspotSDK::Cms::InboundDBObjectType::OrHash).void
        end
        attr_writer :schema

        sig do
          params(
            object_type_id: String,
            object_type_name: String,
            properties: T::Array[HubspotSDK::Cms::PropertyDefinition::OrHash],
            property_groups: T::Array[HubspotSDK::Cms::GroupView::OrHash],
            schema: HubspotSDK::Cms::InboundDBObjectType::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          object_type_id:,
          object_type_name:,
          properties:,
          property_groups:,
          schema: nil
        )
        end

        sig do
          override.returns(
            {
              object_type_id: String,
              object_type_name: String,
              properties: T::Array[HubspotSDK::Cms::PropertyDefinition],
              property_groups: T::Array[HubspotSDK::Cms::GroupView],
              schema: HubspotSDK::Cms::InboundDBObjectType
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
