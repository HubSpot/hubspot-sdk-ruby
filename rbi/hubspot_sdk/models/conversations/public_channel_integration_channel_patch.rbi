# typed: strong

module HubspotSDK
  module Models
    module Conversations
      class PublicChannelIntegrationChannelPatch < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Conversations::PublicChannelIntegrationChannelPatch,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(T::Hash[Symbol, T.anything]) }
        attr_accessor :capabilities

        sig { returns(T.anything) }
        attr_accessor :channel_account_connection_redirect_url

        sig { returns(T.anything) }
        attr_accessor :channel_description

        sig { returns(T.anything) }
        attr_accessor :channel_logo_url

        sig { returns(T.anything) }
        attr_accessor :name

        sig { returns(T.anything) }
        attr_accessor :webhook_url

        sig do
          params(
            capabilities: T::Hash[Symbol, T.anything],
            channel_account_connection_redirect_url: T.anything,
            channel_description: T.anything,
            channel_logo_url: T.anything,
            name: T.anything,
            webhook_url: T.anything
          ).returns(T.attached_class)
        end
        def self.new(
          capabilities:,
          channel_account_connection_redirect_url:,
          channel_description:,
          channel_logo_url:,
          name:,
          webhook_url:
        )
        end

        sig do
          override.returns(
            {
              capabilities: T::Hash[Symbol, T.anything],
              channel_account_connection_redirect_url: T.anything,
              channel_description: T.anything,
              channel_logo_url: T.anything,
              name: T.anything,
              webhook_url: T.anything
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
