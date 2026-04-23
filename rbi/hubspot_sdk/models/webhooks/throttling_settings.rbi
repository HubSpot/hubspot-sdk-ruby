# typed: strong

module HubSpotSDK
  module Models
    module Webhooks
      class ThrottlingSettings < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Webhooks::ThrottlingSettings,
              HubSpotSDK::Internal::AnyHash
            )
          end

        # The maximum number of concurrent requests allowed. This is an integer value.
        sig { returns(Integer) }
        attr_accessor :max_concurrent_requests

        sig do
          params(max_concurrent_requests: Integer).returns(T.attached_class)
        end
        def self.new(
          # The maximum number of concurrent requests allowed. This is an integer value.
          max_concurrent_requests:
        )
        end

        sig { override.returns({ max_concurrent_requests: Integer }) }
        def to_hash
        end
      end
    end
  end
end
