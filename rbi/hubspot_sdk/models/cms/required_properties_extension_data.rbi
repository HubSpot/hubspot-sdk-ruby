# typed: strong

module HubspotSDK
  module Models
    module Cms
      class RequiredPropertiesExtensionData < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Cms::RequiredPropertiesExtensionData,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(T::Boolean) }
        attr_accessor :is_required_property

        sig do
          params(is_required_property: T::Boolean).returns(T.attached_class)
        end
        def self.new(is_required_property:)
        end

        sig { override.returns({ is_required_property: T::Boolean }) }
        def to_hash
        end
      end
    end
  end
end
