# typed: strong

module HubspotSDK
  module Models
    module Crm
      class ObjectTypeEnablementPublicResponse < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Crm::ObjectTypeEnablementPublicResponse,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(T::Boolean) }
        attr_accessor :enablement

        sig { params(enablement: T::Boolean).returns(T.attached_class) }
        def self.new(enablement:)
        end

        sig { override.returns({ enablement: T::Boolean }) }
        def to_hash
        end
      end
    end
  end
end
