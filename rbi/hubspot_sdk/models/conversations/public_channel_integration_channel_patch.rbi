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
        attr_accessor :channel_description

        sig { returns(T.anything) }
        attr_accessor :channel_logo_url

        sig { returns(T.nilable(T.anything)) }
        attr_reader :channel_account_connection_redirect_url

        sig { params(channel_account_connection_redirect_url: T.anything).void }
        attr_writer :channel_account_connection_redirect_url

        sig { returns(T.nilable(T.anything)) }
        attr_reader :name

        sig { params(name: T.anything).void }
        attr_writer :name

        sig { returns(T.nilable(T.anything)) }
        attr_reader :webhook_url

        sig { params(webhook_url: T.anything).void }
        attr_writer :webhook_url

        sig do
          params(
            capabilities: T::Hash[Symbol, T.anything],
            channel_description: T.anything,
            channel_logo_url: T.anything,
            channel_account_connection_redirect_url: T.anything,
            name: T.anything,
            webhook_url: T.anything
          ).returns(T.attached_class)
        end
        def self.new(
          capabilities:,
          channel_description:,
          channel_logo_url:,
          channel_account_connection_redirect_url: nil,
          name: nil,
          webhook_url: nil
        )
        end

        sig do
          override.returns(
            {
              capabilities: T::Hash[Symbol, T.anything],
              channel_description: T.anything,
              channel_logo_url: T.anything,
              channel_account_connection_redirect_url: T.anything,
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
