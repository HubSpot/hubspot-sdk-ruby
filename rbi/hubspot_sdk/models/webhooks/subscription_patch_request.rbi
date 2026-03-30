# typed: strong

module HubspotSDK
  module Models
    module Webhooks
      class SubscriptionPatchRequest < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Webhooks::SubscriptionPatchRequest,
              HubspotSDK::Internal::AnyHash
            )
          end

        # Whether to activate or pause the webhook subscription. If true, the subscription
        # will send webhook notifications. If false, the subscription is paused and will
        # not send notifications.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :active

        sig { params(active: T::Boolean).void }
        attr_writer :active

        sig { params(active: T::Boolean).returns(T.attached_class) }
        def self.new(
          # Whether to activate or pause the webhook subscription. If true, the subscription
          # will send webhook notifications. If false, the subscription is paused and will
          # not send notifications.
          active: nil
        )
        end

        sig { override.returns({ active: T::Boolean }) }
        def to_hash
        end
      end
    end
  end
end
