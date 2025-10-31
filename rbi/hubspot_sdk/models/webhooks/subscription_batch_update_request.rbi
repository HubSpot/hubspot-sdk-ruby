# typed: strong

module HubspotSDK
  module Models
    module Webhooks
      class SubscriptionBatchUpdateRequest < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Webhooks::SubscriptionBatchUpdateRequest,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(Integer) }
        attr_accessor :id

        sig { returns(T::Boolean) }
        attr_accessor :active

        sig do
          params(id: Integer, active: T::Boolean).returns(T.attached_class)
        end
        def self.new(id:, active:)
        end

        sig { override.returns({ id: Integer, active: T::Boolean }) }
        def to_hash
        end
      end
    end
  end
end
