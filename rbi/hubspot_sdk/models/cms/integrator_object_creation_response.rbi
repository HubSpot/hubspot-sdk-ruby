# typed: strong

module HubspotSDK
  module Models
    module Cms
      class IntegratorObjectCreationResponse < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Cms::IntegratorObjectCreationResponse,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(HubspotSDK::Cms::InboundDBObjectType) }
        attr_reader :object_type

        sig do
          params(object_type: HubspotSDK::Cms::InboundDBObjectType::OrHash).void
        end
        attr_writer :object_type

        sig { returns(T::Array[HubspotSDK::Cms::PropertyDefinition]) }
        attr_accessor :properties

        sig { returns(T::Array[HubspotSDK::Cms::Group]) }
        attr_accessor :property_groups

        sig do
          params(
            object_type: HubspotSDK::Cms::InboundDBObjectType::OrHash,
            properties: T::Array[HubspotSDK::Cms::PropertyDefinition::OrHash],
            property_groups: T::Array[HubspotSDK::Cms::Group::OrHash]
          ).returns(T.attached_class)
        end
        def self.new(object_type:, properties:, property_groups:)
        end

        sig do
          override.returns(
            {
              object_type: HubspotSDK::Cms::InboundDBObjectType,
              properties: T::Array[HubspotSDK::Cms::PropertyDefinition],
              property_groups: T::Array[HubspotSDK::Cms::Group]
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
