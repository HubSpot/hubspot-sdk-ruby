# typed: strong

module HubspotSDK
  module Models
    module Cms
      class SoftRequiredPropertiesExtensionData < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Cms::SoftRequiredPropertiesExtensionData,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(T::Boolean) }
        attr_accessor :is_soft_required_property

        sig do
          params(is_soft_required_property: T::Boolean).returns(
            T.attached_class
          )
        end
        def self.new(is_soft_required_property:)
        end

        sig { override.returns({ is_soft_required_property: T::Boolean }) }
        def to_hash
        end
      end
    end
  end
end
