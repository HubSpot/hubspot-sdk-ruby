# typed: strong

module HubspotSDK
  module Models
    module Cms
      module Hubdb
        class TableListParams < HubspotSDK::Internal::Type::BaseModel
          extend HubspotSDK::Internal::Type::RequestParameters::Converter
          include HubspotSDK::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                HubspotSDK::Cms::Hubdb::TableListParams,
                HubspotSDK::Internal::AnyHash
              )
            end

          # The cursor token value to get the next set of results. You can get this from the
          # `paging.next.after` JSON property of a paged response containing more results.
          sig { returns(T.nilable(String)) }
          attr_reader :after

          sig { params(after: String).void }
          attr_writer :after

          # Specifies whether to return archived tables. Defaults to `false`.
          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :archived

          sig { params(archived: T::Boolean).void }
          attr_writer :archived

          # Specifies the content type for the response.
          sig { returns(T.nilable(String)) }
          attr_reader :content_type

          sig { params(content_type: String).void }
          attr_writer :content_type

          # Only return tables created after the specified time.
          sig { returns(T.nilable(Time)) }
          attr_reader :created_after

          sig { params(created_after: Time).void }
          attr_writer :created_after

          # Only return tables created at exactly the specified time.
          sig { returns(T.nilable(Time)) }
          attr_reader :created_at

          sig { params(created_at: Time).void }
          attr_writer :created_at

          # Only return tables created before the specified time.
          sig { returns(T.nilable(Time)) }
          attr_reader :created_before

          sig { params(created_before: Time).void }
          attr_writer :created_before

          # Indicates whether to retrieve the localized schema for the tables.
          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :is_get_localized_schema

          sig { params(is_get_localized_schema: T::Boolean).void }
          attr_writer :is_get_localized_schema

          # The maximum number of results to return. Default is 1000.
          sig { returns(T.nilable(Integer)) }
          attr_reader :limit

          sig { params(limit: Integer).void }
          attr_writer :limit

          # Specifies which fields to use for sorting results. Valid fields are `name`,
          # `createdAt`, `updatedAt`, `createdBy`, `updatedBy`. `createdAt` will be used by
          # default.
          sig { returns(T.nilable(T::Array[String])) }
          attr_reader :sort

          sig { params(sort: T::Array[String]).void }
          attr_writer :sort

          # Only return tables last updated after the specified time.
          sig { returns(T.nilable(Time)) }
          attr_reader :updated_after

          sig { params(updated_after: Time).void }
          attr_writer :updated_after

          # Only return tables last updated at exactly the specified time.
          sig { returns(T.nilable(Time)) }
          attr_reader :updated_at

          sig { params(updated_at: Time).void }
          attr_writer :updated_at

          # Only return tables last updated before the specified time.
          sig { returns(T.nilable(Time)) }
          attr_reader :updated_before

          sig { params(updated_before: Time).void }
          attr_writer :updated_before

          sig do
            params(
              after: String,
              archived: T::Boolean,
              content_type: String,
              created_after: Time,
              created_at: Time,
              created_before: Time,
              is_get_localized_schema: T::Boolean,
              limit: Integer,
              sort: T::Array[String],
              updated_after: Time,
              updated_at: Time,
              updated_before: Time,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            # The cursor token value to get the next set of results. You can get this from the
            # `paging.next.after` JSON property of a paged response containing more results.
            after: nil,
            # Specifies whether to return archived tables. Defaults to `false`.
            archived: nil,
            # Specifies the content type for the response.
            content_type: nil,
            # Only return tables created after the specified time.
            created_after: nil,
            # Only return tables created at exactly the specified time.
            created_at: nil,
            # Only return tables created before the specified time.
            created_before: nil,
            # Indicates whether to retrieve the localized schema for the tables.
            is_get_localized_schema: nil,
            # The maximum number of results to return. Default is 1000.
            limit: nil,
            # Specifies which fields to use for sorting results. Valid fields are `name`,
            # `createdAt`, `updatedAt`, `createdBy`, `updatedBy`. `createdAt` will be used by
            # default.
            sort: nil,
            # Only return tables last updated after the specified time.
            updated_after: nil,
            # Only return tables last updated at exactly the specified time.
            updated_at: nil,
            # Only return tables last updated before the specified time.
            updated_before: nil,
            request_options: {}
          )
          end

          sig do
            override.returns(
              {
                after: String,
                archived: T::Boolean,
                content_type: String,
                created_after: Time,
                created_at: Time,
                created_before: Time,
                is_get_localized_schema: T::Boolean,
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
end
