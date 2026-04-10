# typed: strong

module HubSpotSDK
  module Models
    module Cms
      class IntegratorObjectCreationResponse < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Cms::IntegratorObjectCreationResponse,
              HubSpotSDK::Internal::AnyHash
            )
          end

        sig { returns(HubSpotSDK::Cms::InboundDBObjectType) }
        attr_reader :object_type

        sig do
          params(object_type: HubSpotSDK::Cms::InboundDBObjectType::OrHash).void
        end
        attr_writer :object_type

        sig { returns(T::Array[HubSpotSDK::Cms::PropertyDefinition]) }
        attr_accessor :properties

        sig { returns(T::Array[HubSpotSDK::Cms::Group]) }
        attr_accessor :property_groups

        sig do
          params(
            object_type: HubSpotSDK::Cms::InboundDBObjectType::OrHash,
            properties: T::Array[HubSpotSDK::Cms::PropertyDefinition::OrHash],
            property_groups: T::Array[HubSpotSDK::Cms::Group::OrHash]
          ).returns(T.attached_class)
        end
        def self.new(object_type:, properties:, property_groups:)
        end

        sig do
          override.returns(
            {
              object_type: HubSpotSDK::Cms::InboundDBObjectType,
              properties: T::Array[HubSpotSDK::Cms::PropertyDefinition],
              property_groups: T::Array[HubSpotSDK::Cms::Group]
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
