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

        # The maximum number of HTTP requests HubSpot will attempt to make to your app in
        # a given time frame determined by `period`.
        sig { returns(Integer) }
        attr_accessor :max_concurrent_requests

        sig do
          params(max_concurrent_requests: Integer).returns(T.attached_class)
        end
        def self.new(
          # The maximum number of HTTP requests HubSpot will attempt to make to your app in
          # a given time frame determined by `period`.
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
