# typed: strong

module HubspotSDK
  module Models
    module AppWebhooks
      class ThrottlingSettings < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::AppWebhooks::ThrottlingSettings,
              HubspotSDK::Internal::AnyHash
            )
          end

        # The maximum number of concurrent HTTP requests HubSpot will attempt to make to
        # your app.
        sig { returns(Integer) }
        attr_accessor :max_concurrent_requests

        sig do
          params(max_concurrent_requests: Integer).returns(T.attached_class)
        end
        def self.new(
          # The maximum number of concurrent HTTP requests HubSpot will attempt to make to
          # your app.
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
