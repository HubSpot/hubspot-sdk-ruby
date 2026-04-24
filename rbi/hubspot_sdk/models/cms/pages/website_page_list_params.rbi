# typed: strong

module HubSpotSDK
  module Models
    module Cms
      module Pages
        class WebsitePageListParams < HubSpotSDK::Internal::Type::BaseModel
          extend HubSpotSDK::Internal::Type::RequestParameters::Converter
          include HubSpotSDK::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                HubSpotSDK::Cms::Pages::WebsitePageListParams,
                HubSpotSDK::Internal::AnyHash
              )
            end

          # The paging cursor token of the last successfully read resource will be returned
          # as the `paging.next.after` JSON property of a paged response containing more
          # results.
          sig { returns(T.nilable(String)) }
          attr_reader :after

          sig { params(after: String).void }
          attr_writer :after

          # Whether to return only results that have been archived.
          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :archived

          sig { params(archived: T::Boolean).void }
          attr_writer :archived

          # Filter pages created after a specific date and time.
          sig { returns(T.nilable(Time)) }
          attr_reader :created_after

          sig { params(created_after: Time).void }
          attr_writer :created_after

          # Filter pages by the exact creation timestamp. Format is date-time.
          sig { returns(T.nilable(Time)) }
          attr_reader :created_at

          sig { params(created_at: Time).void }
          attr_writer :created_at

          # Filter pages created before a specific date-time.
          sig { returns(T.nilable(Time)) }
          attr_reader :created_before

          sig { params(created_before: Time).void }
          attr_writer :created_before

          # The maximum number of results to display per page.
          sig { returns(T.nilable(Integer)) }
          attr_reader :limit

          sig { params(limit: Integer).void }
          attr_writer :limit

          # Specify properties to include in the response.
          sig { returns(T.nilable(String)) }
          attr_reader :property

          sig { params(property: String).void }
          attr_writer :property

          # Specify the order of results. Accepts an array of field names to sort by.
          sig { returns(T.nilable(T::Array[String])) }
          attr_reader :sort

          sig { params(sort: T::Array[String]).void }
          attr_writer :sort

          # Filter pages updated after the specified date-time.
          sig { returns(T.nilable(Time)) }
          attr_reader :updated_after

          sig { params(updated_after: Time).void }
          attr_writer :updated_after

          # Filter pages by their exact update timestamp in ISO 8601 format.
          sig { returns(T.nilable(Time)) }
          attr_reader :updated_at

          sig { params(updated_at: Time).void }
          attr_writer :updated_at

          # Filter pages updated before a specific date and time. Format should be
          # date-time.
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
              property: String,
              sort: T::Array[String],
              updated_after: Time,
              updated_at: Time,
              updated_before: Time,
              request_options: HubSpotSDK::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            # The paging cursor token of the last successfully read resource will be returned
            # as the `paging.next.after` JSON property of a paged response containing more
            # results.
            after: nil,
            # Whether to return only results that have been archived.
            archived: nil,
            # Filter pages created after a specific date and time.
            created_after: nil,
            # Filter pages by the exact creation timestamp. Format is date-time.
            created_at: nil,
            # Filter pages created before a specific date-time.
            created_before: nil,
            # The maximum number of results to display per page.
            limit: nil,
            # Specify properties to include in the response.
            property: nil,
            # Specify the order of results. Accepts an array of field names to sort by.
            sort: nil,
            # Filter pages updated after the specified date-time.
            updated_after: nil,
            # Filter pages by their exact update timestamp in ISO 8601 format.
            updated_at: nil,
            # Filter pages updated before a specific date and time. Format should be
            # date-time.
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
                property: String,
                sort: T::Array[String],
                updated_after: Time,
                updated_at: Time,
                updated_before: Time,
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
end
