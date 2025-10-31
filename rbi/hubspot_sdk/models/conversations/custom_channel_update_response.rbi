# typed: strong

module HubspotSDK
  module Models
    module Conversations
      class CustomChannelUpdateResponse < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Models::Conversations::CustomChannelUpdateResponse,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :id

        sig { returns(T::Hash[Symbol, T.anything]) }
        attr_accessor :capabilities

        sig { returns(Time) }
        attr_accessor :created_at

        sig { returns(String) }
        attr_accessor :name

        sig { returns(T.nilable(String)) }
        attr_reader :channel_account_connection_redirect_url

        sig { params(channel_account_connection_redirect_url: String).void }
        attr_writer :channel_account_connection_redirect_url

        sig { returns(T.nilable(String)) }
        attr_reader :channel_description

        sig { params(channel_description: String).void }
        attr_writer :channel_description

        sig { returns(T.nilable(String)) }
        attr_reader :channel_logo_url

        sig { params(channel_logo_url: String).void }
        attr_writer :channel_logo_url

        sig { returns(T.nilable(String)) }
        attr_reader :webhook_url

        sig { params(webhook_url: String).void }
        attr_writer :webhook_url

        sig do
          params(
            id: String,
            capabilities: T::Hash[Symbol, T.anything],
            created_at: Time,
            name: String,
            channel_account_connection_redirect_url: String,
            channel_description: String,
            channel_logo_url: String,
            webhook_url: String
          ).returns(T.attached_class)
        end
        def self.new(
          id:,
          capabilities:,
          created_at:,
          name:,
          channel_account_connection_redirect_url: nil,
          channel_description: nil,
          channel_logo_url: nil,
          webhook_url: nil
        )
        end

        sig do
          override.returns(
            {
              id: String,
              capabilities: T::Hash[Symbol, T.anything],
              created_at: Time,
              name: String,
              channel_account_connection_redirect_url: String,
              channel_description: String,
              channel_logo_url: String,
              webhook_url: String
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
