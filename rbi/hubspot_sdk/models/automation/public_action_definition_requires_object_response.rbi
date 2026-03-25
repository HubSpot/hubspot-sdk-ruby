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

        sig { returns(T::Boolean) }
        attr_accessor :requires_object

        sig { params(requires_object: T::Boolean).returns(T.attached_class) }
        def self.new(requires_object:)
        end

        sig { override.returns({ requires_object: T::Boolean }) }
        def to_hash
        end
      end
    end
  end
end
