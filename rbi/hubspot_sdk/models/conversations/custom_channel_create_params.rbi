# typed: strong

module HubspotSDK
  module Models
    module Conversations
      class CustomChannelCreateParams < HubspotSDK::Internal::Type::BaseModel
        extend HubspotSDK::Internal::Type::RequestParameters::Converter
        include HubspotSDK::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Conversations::CustomChannelCreateParams,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(T::Hash[Symbol, T.anything]) }
        attr_accessor :capabilities

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
            capabilities: T::Hash[Symbol, T.anything],
            name: String,
            channel_account_connection_redirect_url: String,
            channel_description: String,
            channel_logo_url: String,
            webhook_url: String,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          capabilities:,
          name:,
          channel_account_connection_redirect_url: nil,
          channel_description: nil,
          channel_logo_url: nil,
          webhook_url: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              capabilities: T::Hash[Symbol, T.anything],
              name: String,
              channel_account_connection_redirect_url: String,
              channel_description: String,
              channel_logo_url: String,
              webhook_url: String,
              request_options: HubspotSDK::RequestOptions
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
