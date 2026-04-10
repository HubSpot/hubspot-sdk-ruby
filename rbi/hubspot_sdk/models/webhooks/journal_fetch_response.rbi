# typed: strong

module HubSpotSDK
  module Models
    module Webhooks
      class JournalFetchResponse < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Webhooks::JournalFetchResponse,
              HubSpotSDK::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :current_offset

        sig { returns(Time) }
        attr_accessor :expires_at

        sig { returns(String) }
        attr_accessor :url

        sig do
          params(current_offset: String, expires_at: Time, url: String).returns(
            T.attached_class
          )
        end
        def self.new(current_offset:, expires_at:, url:)
        end

        sig do
          override.returns(
            { current_offset: String, expires_at: Time, url: String }
          )
        end
        def to_hash
        end
      end
    end
  end
end
