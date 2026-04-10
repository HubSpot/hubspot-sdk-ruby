# typed: strong

module HubSpotSDK
  module Models
    module Automation
      class PublicActionDefinitionRequiresObjectResponse < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Automation::PublicActionDefinitionRequiresObjectResponse,
              HubSpotSDK::Internal::AnyHash
            )
          end

        # Indicates whether a custom action definition requires an object.
        sig { returns(T::Boolean) }
        attr_accessor :requires_object

        sig { params(requires_object: T::Boolean).returns(T.attached_class) }
        def self.new(
          # Indicates whether a custom action definition requires an object.
          requires_object:
        )
        end

        sig { override.returns({ requires_object: T::Boolean }) }
        def to_hash
        end
      end
    end
  end
end
