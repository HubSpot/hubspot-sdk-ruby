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

        # The ID of the webhook subscription to update.
        sig { returns(Integer) }
        attr_accessor :id

        # Whether to activate or pause the webhook subscription. If true, the subscription
        # will send webhook notifications. If false, the subscription is paused and will
        # not send notifications.
        sig { returns(T::Boolean) }
        attr_accessor :active

        sig do
          params(id: Integer, active: T::Boolean).returns(T.attached_class)
        end
        def self.new(
          # The ID of the webhook subscription to update.
          id:,
          # Whether to activate or pause the webhook subscription. If true, the subscription
          # will send webhook notifications. If false, the subscription is paused and will
          # not send notifications.
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
