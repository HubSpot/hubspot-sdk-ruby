# typed: strong

module HubspotSDK
  module Models
    module Automation
      class PublicActionDefinitionRequiresObjectResponse < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Automation::PublicActionDefinitionRequiresObjectResponse,
              HubspotSDK::Internal::AnyHash
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
