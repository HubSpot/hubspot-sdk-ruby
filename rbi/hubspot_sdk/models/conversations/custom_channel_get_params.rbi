# typed: strong

module HubSpotSDK
  module Models
    module Conversations
      class CustomChannelGetParams < HubSpotSDK::Internal::Type::BaseModel
        extend HubSpotSDK::Internal::Type::RequestParameters::Converter
        include HubSpotSDK::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Conversations::CustomChannelGetParams,
              HubSpotSDK::Internal::AnyHash
            )
          end

        sig { returns(Integer) }
        attr_accessor :channel_id

        sig { returns(Integer) }
        attr_accessor :channel_account_id

        # Whether to return only results that have been archived.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :archived

        sig { params(archived: T::Boolean).void }
        attr_writer :archived

        sig do
          params(
            channel_id: Integer,
            channel_account_id: Integer,
            archived: T::Boolean,
            request_options: HubSpotSDK::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          channel_id:,
          channel_account_id:,
          # Whether to return only results that have been archived.
          archived: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              channel_id: Integer,
              channel_account_id: Integer,
              archived: T::Boolean,
              request_options: HubSpotSDK::RequestOptions
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
