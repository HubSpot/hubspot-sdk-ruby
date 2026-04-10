# typed: strong

module HubSpotSDK
  module Models
    module Cms
      class ObjectDefinitionResponse < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Cms::ObjectDefinitionResponse,
              HubSpotSDK::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :object_type_id

        sig { returns(String) }
        attr_accessor :object_type_name

        sig { returns(T::Array[HubSpotSDK::Cms::PropertyDefinition]) }
        attr_accessor :properties

        sig { returns(T::Array[HubSpotSDK::Cms::GroupView]) }
        attr_accessor :property_groups

        sig { returns(T.nilable(HubSpotSDK::Cms::InboundDBObjectType)) }
        attr_reader :schema

        sig do
          params(schema: HubSpotSDK::Cms::InboundDBObjectType::OrHash).void
        end
        attr_writer :schema

        sig do
          params(
            object_type_id: String,
            object_type_name: String,
            properties: T::Array[HubSpotSDK::Cms::PropertyDefinition::OrHash],
            property_groups: T::Array[HubSpotSDK::Cms::GroupView::OrHash],
            schema: HubSpotSDK::Cms::InboundDBObjectType::OrHash
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
              properties: T::Array[HubSpotSDK::Cms::PropertyDefinition],
              property_groups: T::Array[HubSpotSDK::Cms::GroupView],
              schema: HubSpotSDK::Cms::InboundDBObjectType
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
