# typed: strong

module HubspotSDK
  module Models
    module Files
      class FolderSearchParams < HubspotSDK::Internal::Type::BaseModel
        extend HubspotSDK::Internal::Type::RequestParameters::Converter
        include HubspotSDK::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Files::FolderSearchParams,
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

        sig { returns(T.nilable(String)) }
        attr_reader :before

        sig { params(before: String).void }
        attr_writer :before

        sig { returns(T.nilable(Time)) }
        attr_reader :created_at

        sig { params(created_at: Time).void }
        attr_writer :created_at

        sig { returns(T.nilable(Time)) }
        attr_reader :created_at_gte

        sig { params(created_at_gte: Time).void }
        attr_writer :created_at_gte

        sig { returns(T.nilable(Time)) }
        attr_reader :created_at_lte

        sig { params(created_at_lte: Time).void }
        attr_writer :created_at_lte

        sig { returns(T.nilable(Integer)) }
        attr_reader :id_gte

        sig { params(id_gte: Integer).void }
        attr_writer :id_gte

        sig { returns(T.nilable(Integer)) }
        attr_reader :id_lte

        sig { params(id_lte: Integer).void }
        attr_writer :id_lte

        sig { returns(T.nilable(T::Array[Integer])) }
        attr_reader :ids

        sig { params(ids: T::Array[Integer]).void }
        attr_writer :ids

        # The maximum number of results to display per page.
        sig { returns(T.nilable(Integer)) }
        attr_reader :limit

        sig { params(limit: Integer).void }
        attr_writer :limit

        sig { returns(T.nilable(String)) }
        attr_reader :name

        sig { params(name: String).void }
        attr_writer :name

        sig { returns(T.nilable(T::Array[Integer])) }
        attr_reader :parent_folder_ids

        sig { params(parent_folder_ids: T::Array[Integer]).void }
        attr_writer :parent_folder_ids

        sig { returns(T.nilable(String)) }
        attr_reader :path

        sig { params(path: String).void }
        attr_writer :path

        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :properties

        sig { params(properties: T::Array[String]).void }
        attr_writer :properties

        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :sort

        sig { params(sort: T::Array[String]).void }
        attr_writer :sort

        sig { returns(T.nilable(Time)) }
        attr_reader :updated_at

        sig { params(updated_at: Time).void }
        attr_writer :updated_at

        sig { returns(T.nilable(Time)) }
        attr_reader :updated_at_gte

        sig { params(updated_at_gte: Time).void }
        attr_writer :updated_at_gte

        sig { returns(T.nilable(Time)) }
        attr_reader :updated_at_lte

        sig { params(updated_at_lte: Time).void }
        attr_writer :updated_at_lte

        sig do
          params(
            after: String,
            before: String,
            created_at: Time,
            created_at_gte: Time,
            created_at_lte: Time,
            id_gte: Integer,
            id_lte: Integer,
            ids: T::Array[Integer],
            limit: Integer,
            name: String,
            parent_folder_ids: T::Array[Integer],
            path: String,
            properties: T::Array[String],
            sort: T::Array[String],
            updated_at: Time,
            updated_at_gte: Time,
            updated_at_lte: Time,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # The paging cursor token of the last successfully read resource will be returned
          # as the `paging.next.after` JSON property of a paged response containing more
          # results.
          after: nil,
          before: nil,
          created_at: nil,
          created_at_gte: nil,
          created_at_lte: nil,
          id_gte: nil,
          id_lte: nil,
          ids: nil,
          # The maximum number of results to display per page.
          limit: nil,
          name: nil,
          parent_folder_ids: nil,
          path: nil,
          properties: nil,
          sort: nil,
          updated_at: nil,
          updated_at_gte: nil,
          updated_at_lte: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              after: String,
              before: String,
              created_at: Time,
              created_at_gte: Time,
              created_at_lte: Time,
              id_gte: Integer,
              id_lte: Integer,
              ids: T::Array[Integer],
              limit: Integer,
              name: String,
              parent_folder_ids: T::Array[Integer],
              path: String,
              properties: T::Array[String],
              sort: T::Array[String],
              updated_at: Time,
              updated_at_gte: Time,
              updated_at_lte: Time,
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
