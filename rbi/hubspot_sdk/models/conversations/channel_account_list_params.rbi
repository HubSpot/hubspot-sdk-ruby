# typed: strong

module HubspotSDK
  module Models
    module Conversations
      class ChannelAccountListParams < HubspotSDK::Internal::Type::BaseModel
        extend HubspotSDK::Internal::Type::RequestParameters::Converter
        include HubspotSDK::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Conversations::ChannelAccountListParams,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(String)) }
        attr_reader :after

        sig { params(after: String).void }
        attr_writer :after

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :archived

        sig { params(archived: T::Boolean).void }
        attr_writer :archived

        sig { returns(T.nilable(T::Array[Integer])) }
        attr_reader :channel_id

        sig { params(channel_id: T::Array[Integer]).void }
        attr_writer :channel_id

        sig { returns(T.nilable(Integer)) }
        attr_reader :default_page_length

        sig { params(default_page_length: Integer).void }
        attr_writer :default_page_length

        sig { returns(T.nilable(T::Array[Integer])) }
        attr_reader :inbox_id

        sig { params(inbox_id: T::Array[Integer]).void }
        attr_writer :inbox_id

        sig { returns(T.nilable(Integer)) }
        attr_reader :limit

        sig { params(limit: Integer).void }
        attr_writer :limit

        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :sort

        sig { params(sort: T::Array[String]).void }
        attr_writer :sort

        sig do
          params(
            after: String,
            archived: T::Boolean,
            channel_id: T::Array[Integer],
            default_page_length: Integer,
            inbox_id: T::Array[Integer],
            limit: Integer,
            sort: T::Array[String],
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          after: nil,
          archived: nil,
          channel_id: nil,
          default_page_length: nil,
          inbox_id: nil,
          limit: nil,
          sort: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              after: String,
              archived: T::Boolean,
              channel_id: T::Array[Integer],
              default_page_length: Integer,
              inbox_id: T::Array[Integer],
              limit: Integer,
              sort: T::Array[String],
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
