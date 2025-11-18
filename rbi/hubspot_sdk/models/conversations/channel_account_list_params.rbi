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

        # The paging cursor token of the last successfully read resource will be returned
        # as the `paging.next.after` JSON property of a paged response containing more
        # results.
        sig { returns(T.nilable(String)) }
        attr_reader :after

        sig { params(after: String).void }
        attr_writer :after

        # Whether to include archived channel accounts in the response.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :archived

        sig { params(archived: T::Boolean).void }
        attr_writer :archived

        # Limits results to channel accounts within a particular channel.
        sig { returns(T.nilable(T::Array[Integer])) }
        attr_reader :channel_id

        sig { params(channel_id: T::Array[Integer]).void }
        attr_writer :channel_id

        # The default number of results to display per page.
        sig { returns(T.nilable(Integer)) }
        attr_reader :default_page_length

        sig { params(default_page_length: Integer).void }
        attr_writer :default_page_length

        # Limits results to channel accounts within a particular inbox.
        sig { returns(T.nilable(T::Array[Integer])) }
        attr_reader :inbox_id

        sig { params(inbox_id: T::Array[Integer]).void }
        attr_writer :inbox_id

        # The maximum number of results to display per page.
        sig { returns(T.nilable(Integer)) }
        attr_reader :limit

        sig { params(limit: Integer).void }
        attr_writer :limit

        # The sort order for the channel accounts.
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
          # The paging cursor token of the last successfully read resource will be returned
          # as the `paging.next.after` JSON property of a paged response containing more
          # results.
          after: nil,
          # Whether to include archived channel accounts in the response.
          archived: nil,
          # Limits results to channel accounts within a particular channel.
          channel_id: nil,
          # The default number of results to display per page.
          default_page_length: nil,
          # Limits results to channel accounts within a particular inbox.
          inbox_id: nil,
          # The maximum number of results to display per page.
          limit: nil,
          # The sort order for the channel accounts.
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
