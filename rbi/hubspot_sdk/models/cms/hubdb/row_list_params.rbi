# typed: strong

module HubspotSDK
  module Models
    module Cms
      module Hubdb
        class RowListParams < HubspotSDK::Internal::Type::BaseModel
          extend HubspotSDK::Internal::Type::RequestParameters::Converter
          include HubspotSDK::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                HubspotSDK::Cms::Hubdb::RowListParams,
                HubspotSDK::Internal::AnyHash
              )
            end

          # The cursor token value to get the next set of results. You can get this from the
          # `paging.next.after` JSON property of a paged response containing more results.
          sig { returns(T.nilable(String)) }
          attr_reader :after

          sig { params(after: String).void }
          attr_writer :after

          # Specifies whether to include archived rows in the response.
          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :archived

          sig { params(archived: T::Boolean).void }
          attr_writer :archived

          # The maximum number of results to return. Default is `1000`.
          sig { returns(T.nilable(Integer)) }
          attr_reader :limit

          sig { params(limit: Integer).void }
          attr_writer :limit

          # The number of rows to skip before starting to return results.
          sig { returns(T.nilable(Integer)) }
          attr_reader :offset

          sig { params(offset: Integer).void }
          attr_writer :offset

          # Specify the column names to get results containing only the required columns
          # instead of all column details.
          sig { returns(T.nilable(T::Array[String])) }
          attr_reader :properties

          sig { params(properties: T::Array[String]).void }
          attr_writer :properties

          # Specifies the column names to sort the results by. See the above description for
          # more details.
          sig { returns(T.nilable(T::Array[String])) }
          attr_reader :sort

          sig { params(sort: T::Array[String]).void }
          attr_writer :sort

          sig do
            params(
              after: String,
              archived: T::Boolean,
              limit: Integer,
              offset: Integer,
              properties: T::Array[String],
              sort: T::Array[String],
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            # The cursor token value to get the next set of results. You can get this from the
            # `paging.next.after` JSON property of a paged response containing more results.
            after: nil,
            # Specifies whether to include archived rows in the response.
            archived: nil,
            # The maximum number of results to return. Default is `1000`.
            limit: nil,
            # The number of rows to skip before starting to return results.
            offset: nil,
            # Specify the column names to get results containing only the required columns
            # instead of all column details.
            properties: nil,
            # Specifies the column names to sort the results by. See the above description for
            # more details.
            sort: nil,
            request_options: {}
          )
          end

          sig do
            override.returns(
              {
                after: String,
                archived: T::Boolean,
                limit: Integer,
                offset: Integer,
                properties: T::Array[String],
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
end
