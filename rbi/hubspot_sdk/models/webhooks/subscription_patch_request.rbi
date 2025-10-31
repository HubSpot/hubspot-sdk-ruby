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

        # Determines if the subscription is active or paused.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :active

        sig { params(active: T::Boolean).void }
        attr_writer :active

        # Updated details for the subscription.
        sig { params(active: T::Boolean).returns(T.attached_class) }
        def self.new(
          # Determines if the subscription is active or paused.
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
