# typed: strong

module HubspotSDK
  module Models
    module Automation
      class PublicActionDefinitionRequiresObjectRequest < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Automation::PublicActionDefinitionRequiresObjectRequest,
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
