# typed: strong

module HubspotSDK
  module Models
    module Files
      class FileSearchParams < HubspotSDK::Internal::Type::BaseModel
        extend HubspotSDK::Internal::Type::RequestParameters::Converter
        include HubspotSDK::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Files::FileSearchParams,
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

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :allows_anonymous_access

        sig { params(allows_anonymous_access: T::Boolean).void }
        attr_writer :allows_anonymous_access

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

        sig { returns(T.nilable(String)) }
        attr_reader :encoding

        sig { params(encoding: String).void }
        attr_writer :encoding

        sig { returns(T.nilable(Time)) }
        attr_reader :expires_at

        sig { params(expires_at: Time).void }
        attr_writer :expires_at

        sig { returns(T.nilable(Time)) }
        attr_reader :expires_at_gte

        sig { params(expires_at_gte: Time).void }
        attr_writer :expires_at_gte

        sig { returns(T.nilable(Time)) }
        attr_reader :expires_at_lte

        sig { params(expires_at_lte: Time).void }
        attr_writer :expires_at_lte

        sig { returns(T.nilable(String)) }
        attr_reader :extension

        sig { params(extension: String).void }
        attr_writer :extension

        sig { returns(T.nilable(String)) }
        attr_reader :file_md5

        sig { params(file_md5: String).void }
        attr_writer :file_md5

        sig { returns(T.nilable(Integer)) }
        attr_reader :height

        sig { params(height: Integer).void }
        attr_writer :height

        sig { returns(T.nilable(Integer)) }
        attr_reader :height_gte

        sig { params(height_gte: Integer).void }
        attr_writer :height_gte

        sig { returns(T.nilable(Integer)) }
        attr_reader :height_lte

        sig { params(height_lte: Integer).void }
        attr_writer :height_lte

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

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :is_usable_in_content

        sig { params(is_usable_in_content: T::Boolean).void }
        attr_writer :is_usable_in_content

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

        sig { returns(T.nilable(Integer)) }
        attr_reader :size

        sig { params(size: Integer).void }
        attr_writer :size

        sig { returns(T.nilable(Integer)) }
        attr_reader :size_gte

        sig { params(size_gte: Integer).void }
        attr_writer :size_gte

        sig { returns(T.nilable(Integer)) }
        attr_reader :size_lte

        sig { params(size_lte: Integer).void }
        attr_writer :size_lte

        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :sort

        sig { params(sort: T::Array[String]).void }
        attr_writer :sort

        sig { returns(T.nilable(String)) }
        attr_reader :type

        sig { params(type: String).void }
        attr_writer :type

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

        sig { returns(T.nilable(String)) }
        attr_reader :url

        sig { params(url: String).void }
        attr_writer :url

        sig { returns(T.nilable(Integer)) }
        attr_reader :width

        sig { params(width: Integer).void }
        attr_writer :width

        sig { returns(T.nilable(Integer)) }
        attr_reader :width_gte

        sig { params(width_gte: Integer).void }
        attr_writer :width_gte

        sig { returns(T.nilable(Integer)) }
        attr_reader :width_lte

        sig { params(width_lte: Integer).void }
        attr_writer :width_lte

        sig do
          params(
            after: String,
            allows_anonymous_access: T::Boolean,
            before: String,
            created_at: Time,
            created_at_gte: Time,
            created_at_lte: Time,
            encoding: String,
            expires_at: Time,
            expires_at_gte: Time,
            expires_at_lte: Time,
            extension: String,
            file_md5: String,
            height: Integer,
            height_gte: Integer,
            height_lte: Integer,
            id_gte: Integer,
            id_lte: Integer,
            ids: T::Array[Integer],
            is_usable_in_content: T::Boolean,
            limit: Integer,
            name: String,
            parent_folder_ids: T::Array[Integer],
            path: String,
            properties: T::Array[String],
            size: Integer,
            size_gte: Integer,
            size_lte: Integer,
            sort: T::Array[String],
            type: String,
            updated_at: Time,
            updated_at_gte: Time,
            updated_at_lte: Time,
            url: String,
            width: Integer,
            width_gte: Integer,
            width_lte: Integer,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # The paging cursor token of the last successfully read resource will be returned
          # as the `paging.next.after` JSON property of a paged response containing more
          # results.
          after: nil,
          allows_anonymous_access: nil,
          before: nil,
          created_at: nil,
          created_at_gte: nil,
          created_at_lte: nil,
          encoding: nil,
          expires_at: nil,
          expires_at_gte: nil,
          expires_at_lte: nil,
          extension: nil,
          file_md5: nil,
          height: nil,
          height_gte: nil,
          height_lte: nil,
          id_gte: nil,
          id_lte: nil,
          ids: nil,
          is_usable_in_content: nil,
          # The maximum number of results to display per page.
          limit: nil,
          name: nil,
          parent_folder_ids: nil,
          path: nil,
          properties: nil,
          size: nil,
          size_gte: nil,
          size_lte: nil,
          sort: nil,
          type: nil,
          updated_at: nil,
          updated_at_gte: nil,
          updated_at_lte: nil,
          url: nil,
          width: nil,
          width_gte: nil,
          width_lte: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              after: String,
              allows_anonymous_access: T::Boolean,
              before: String,
              created_at: Time,
              created_at_gte: Time,
              created_at_lte: Time,
              encoding: String,
              expires_at: Time,
              expires_at_gte: Time,
              expires_at_lte: Time,
              extension: String,
              file_md5: String,
              height: Integer,
              height_gte: Integer,
              height_lte: Integer,
              id_gte: Integer,
              id_lte: Integer,
              ids: T::Array[Integer],
              is_usable_in_content: T::Boolean,
              limit: Integer,
              name: String,
              parent_folder_ids: T::Array[Integer],
              path: String,
              properties: T::Array[String],
              size: Integer,
              size_gte: Integer,
              size_lte: Integer,
              sort: T::Array[String],
              type: String,
              updated_at: Time,
              updated_at_gte: Time,
              updated_at_lte: Time,
              url: String,
              width: Integer,
              width_gte: Integer,
              width_lte: Integer,
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
