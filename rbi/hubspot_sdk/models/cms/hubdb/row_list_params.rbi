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

          sig { returns(String) }
          attr_accessor :table_id_or_name

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

          # The maximum number of results to display per page.
          sig { returns(T.nilable(Integer)) }
          attr_reader :limit

          sig { params(limit: Integer).void }
          attr_writer :limit

          sig { returns(T.nilable(Integer)) }
          attr_reader :offset

          sig { params(offset: Integer).void }
          attr_writer :offset

          sig { returns(T.nilable(T::Array[String])) }
          attr_reader :properties

          sig { params(properties: T::Array[String]).void }
          attr_writer :properties

          sig { returns(T.nilable(T::Array[String])) }
          attr_reader :sort

          sig { params(sort: T::Array[String]).void }
          attr_writer :sort

          sig do
            params(
              table_id_or_name: String,
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
            table_id_or_name:,
            # The paging cursor token of the last successfully read resource will be returned
            # as the `paging.next.after` JSON property of a paged response containing more
            # results.
            after: nil,
            # Whether to return only results that have been archived.
            archived: nil,
            # The maximum number of results to display per page.
            limit: nil,
            offset: nil,
            properties: nil,
            sort: nil,
            request_options: {}
          )
          end

          sig do
            override.returns(
              {
                table_id_or_name: String,
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
