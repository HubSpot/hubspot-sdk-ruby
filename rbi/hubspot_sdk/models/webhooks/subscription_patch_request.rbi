# typed: strong

module HubSpotSDK
  module Models
    module Webhooks
      class SubscriptionPatchRequest < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Webhooks::SubscriptionPatchRequest,
              HubSpotSDK::Internal::AnyHash
            )
          end

        # A boolean indicating whether the subscription is active. If true, the
        # subscription is active; if false, it is inactive.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :active

        sig { params(active: T::Boolean).void }
        attr_writer :active

        sig { params(active: T::Boolean).returns(T.attached_class) }
        def self.new(
          # A boolean indicating whether the subscription is active. If true, the
          # subscription is active; if false, it is inactive.
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
