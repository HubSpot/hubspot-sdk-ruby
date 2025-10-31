# typed: strong

module HubspotSDK
  module Models
    module Conversations
      class CustomChannelListResponse < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Models::Conversations::CustomChannelListResponse,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig do
          returns(
            T::Array[
              HubspotSDK::Models::Conversations::CustomChannelListResponse::Result
            ]
          )
        end
        attr_accessor :results

        sig { returns(Integer) }
        attr_accessor :total

        sig { returns(T.nilable(HubspotSDK::ForwardPaging)) }
        attr_reader :paging

        sig { params(paging: HubspotSDK::ForwardPaging::OrHash).void }
        attr_writer :paging

        sig do
          params(
            results:
              T::Array[
                HubspotSDK::Models::Conversations::CustomChannelListResponse::Result::OrHash
              ],
            total: Integer,
            paging: HubspotSDK::ForwardPaging::OrHash
          ).returns(T.attached_class)
        end
        def self.new(results:, total:, paging: nil)
        end

        sig do
          override.returns(
            {
              results:
                T::Array[
                  HubspotSDK::Models::Conversations::CustomChannelListResponse::Result
                ],
              total: Integer,
              paging: HubspotSDK::ForwardPaging
            }
          )
        end
        def to_hash
        end

        class Result < HubspotSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                HubspotSDK::Models::Conversations::CustomChannelListResponse::Result,
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
end
