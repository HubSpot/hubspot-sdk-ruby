# typed: strong

module HubspotSDK
  module Models
    module Cms
      class URLRedirectListParams < HubspotSDK::Internal::Type::BaseModel
        extend HubspotSDK::Internal::Type::RequestParameters::Converter
        include HubspotSDK::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Cms::URLRedirectListParams,
              HubspotSDK::Internal::AnyHash
            )
          end

        # A cursor token for pagination. Use the value from the previous response's
        # paging.next.after field.
        sig { returns(T.nilable(String)) }
        attr_reader :after

        sig { params(after: String).void }
        attr_writer :after

        # Whether to return only results that have been archived.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :archived

        sig { params(archived: T::Boolean).void }
        attr_writer :archived

        # Filter redirects created after a specific timestamp. Format must be date-time.
        sig { returns(T.nilable(Time)) }
        attr_reader :created_after

        sig { params(created_after: Time).void }
        attr_writer :created_after

        # Filter redirects by their exact creation timestamp. Format must be date-time.
        sig { returns(T.nilable(Time)) }
        attr_reader :created_at

        sig { params(created_at: Time).void }
        attr_writer :created_at

        # Filter redirects created before a specific timestamp. Format must be date-time.
        sig { returns(T.nilable(Time)) }
        attr_reader :created_before

        sig { params(created_before: Time).void }
        attr_writer :created_before

        # The maximum number of results to display per page.
        sig { returns(T.nilable(Integer)) }
        attr_reader :limit

        sig { params(limit: Integer).void }
        attr_writer :limit

        # Specify the order in which to sort the results. Accepts an array of strings.
        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :sort

        sig { params(sort: T::Array[String]).void }
        attr_writer :sort

        # Filter redirects updated after a specific timestamp. Format must be date-time.
        sig { returns(T.nilable(Time)) }
        attr_reader :updated_after

        sig { params(updated_after: Time).void }
        attr_writer :updated_after

        # Filter redirects by their exact update timestamp. Format must be date-time.
        sig { returns(T.nilable(Time)) }
        attr_reader :updated_at

        sig { params(updated_at: Time).void }
        attr_writer :updated_at

        # Filter redirects updated before a specific timestamp. Format must be date-time.
        sig { returns(T.nilable(Time)) }
        attr_reader :updated_before

        sig { params(updated_before: Time).void }
        attr_writer :updated_before

        sig do
          params(
            after: String,
            archived: T::Boolean,
            created_after: Time,
            created_at: Time,
            created_before: Time,
            limit: Integer,
            sort: T::Array[String],
            updated_after: Time,
            updated_at: Time,
            updated_before: Time,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # A cursor token for pagination. Use the value from the previous response's
          # paging.next.after field.
          after: nil,
          # Whether to return only results that have been archived.
          archived: nil,
          # Filter redirects created after a specific timestamp. Format must be date-time.
          created_after: nil,
          # Filter redirects by their exact creation timestamp. Format must be date-time.
          created_at: nil,
          # Filter redirects created before a specific timestamp. Format must be date-time.
          created_before: nil,
          # The maximum number of results to display per page.
          limit: nil,
          # Specify the order in which to sort the results. Accepts an array of strings.
          sort: nil,
          # Filter redirects updated after a specific timestamp. Format must be date-time.
          updated_after: nil,
          # Filter redirects by their exact update timestamp. Format must be date-time.
          updated_at: nil,
          # Filter redirects updated before a specific timestamp. Format must be date-time.
          updated_before: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              after: String,
              archived: T::Boolean,
              created_after: Time,
              created_at: Time,
              created_before: Time,
              limit: Integer,
              sort: T::Array[String],
              updated_after: Time,
              updated_at: Time,
              updated_before: Time,
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
