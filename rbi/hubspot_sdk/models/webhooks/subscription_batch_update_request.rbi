# typed: strong

module HubSpotSDK
  module Models
    module Webhooks
      class SubscriptionBatchUpdateRequest < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Webhooks::SubscriptionBatchUpdateRequest,
              HubSpotSDK::Internal::AnyHash
            )
          end

        # The unique identifier for the subscription. It is an integer.
        sig { returns(Integer) }
        attr_accessor :id

        # A boolean indicating whether the subscription is active.
        sig { returns(T::Boolean) }
        attr_accessor :active

        sig do
          params(id: Integer, active: T::Boolean).returns(T.attached_class)
        end
        def self.new(
          # The unique identifier for the subscription. It is an integer.
          id:,
          # A boolean indicating whether the subscription is active.
          active:
        )
        end

        sig { override.returns({ id: Integer, active: T::Boolean }) }
        def to_hash
        end
      end
    end
  end
end
