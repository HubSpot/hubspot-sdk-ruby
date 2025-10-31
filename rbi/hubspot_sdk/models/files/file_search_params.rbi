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

        # Offset search results by this value. The default offset is 0 and the maximum
        # offset of items for a given search is 10,000. Narrow your search down if you are
        # reaching this limit.
        sig { returns(T.nilable(String)) }
        attr_reader :after

        sig { params(after: String).void }
        attr_writer :after

        # Search files by access. If `true`, will show only public files. If `false`, will
        # show only private files.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :allows_anonymous_access

        sig { params(allows_anonymous_access: T::Boolean).void }
        attr_writer :allows_anonymous_access

        sig { returns(T.nilable(String)) }
        attr_reader :before

        sig { params(before: String).void }
        attr_writer :before

        # Search files by time of creation.
        sig { returns(T.nilable(Time)) }
        attr_reader :created_at

        sig { params(created_at: Time).void }
        attr_writer :created_at

        # Search files by greater than or equal to time of creation. Can be used with
        # `createdAtLte` to create a range.
        sig { returns(T.nilable(Time)) }
        attr_reader :created_at_gte

        sig { params(created_at_gte: Time).void }
        attr_writer :created_at_gte

        # Search files by less than or equal to time of creation. Can be used with
        # `createdAtGte` to create a range.
        sig { returns(T.nilable(Time)) }
        attr_reader :created_at_lte

        sig { params(created_at_lte: Time).void }
        attr_writer :created_at_lte

        # Search files by specified encoding.
        sig { returns(T.nilable(String)) }
        attr_reader :encoding

        sig { params(encoding: String).void }
        attr_writer :encoding

        # Search files by exact expires time. Time must be epoch time in milliseconds.
        sig { returns(T.nilable(Time)) }
        attr_reader :expires_at

        sig { params(expires_at: Time).void }
        attr_writer :expires_at

        # Search files by greater than or equal to expires time. Can be used with
        # `expiresAtLte` to create a range.
        sig { returns(T.nilable(Time)) }
        attr_reader :expires_at_gte

        sig { params(expires_at_gte: Time).void }
        attr_writer :expires_at_gte

        # Search files by less than or equal to expires time. Can be used with
        # `expiresAtGte` to create a range.
        sig { returns(T.nilable(Time)) }
        attr_reader :expires_at_lte

        sig { params(expires_at_lte: Time).void }
        attr_writer :expires_at_lte

        # Search files by given extension.
        sig { returns(T.nilable(String)) }
        attr_reader :extension

        sig { params(extension: String).void }
        attr_writer :extension

        # Search files by a specific md5 hash.
        sig { returns(T.nilable(String)) }
        attr_reader :file_md5

        sig { params(file_md5: String).void }
        attr_writer :file_md5

        # Search files by height of image or video.
        sig { returns(T.nilable(Integer)) }
        attr_reader :height

        sig { params(height: Integer).void }
        attr_writer :height

        # Search files by greater than or equal to height of image or video. Can be used
        # with `heightLte` to create a range.
        sig { returns(T.nilable(Integer)) }
        attr_reader :height_gte

        sig { params(height_gte: Integer).void }
        attr_writer :height_gte

        # Search files by less than or equal to height of image or video. Can be used with
        # `heightGte` to create a range.
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

        # Search by a list of file IDs.
        sig { returns(T.nilable(T::Array[Integer])) }
        attr_reader :ids

        sig { params(ids: T::Array[Integer]).void }
        attr_writer :ids

        # If `true`, shows files that have been marked to be used in new content. If
        # `false`, shows files that should not be used in new content.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :is_usable_in_content

        sig { params(is_usable_in_content: T::Boolean).void }
        attr_writer :is_usable_in_content

        # Number of items to return. Default limit is 10, maximum limit is 100.
        sig { returns(T.nilable(Integer)) }
        attr_reader :limit

        sig { params(limit: Integer).void }
        attr_writer :limit

        # Search for files containing the given name.
        sig { returns(T.nilable(String)) }
        attr_reader :name

        sig { params(name: String).void }
        attr_writer :name

        # Search files within given `folderId`.
        sig { returns(T.nilable(T::Array[Integer])) }
        attr_reader :parent_folder_ids

        sig { params(parent_folder_ids: T::Array[Integer]).void }
        attr_writer :parent_folder_ids

        # Search files by path.
        sig { returns(T.nilable(String)) }
        attr_reader :path

        sig { params(path: String).void }
        attr_writer :path

        # A list of file properties to return.
        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :properties

        sig { params(properties: T::Array[String]).void }
        attr_writer :properties

        # Search files by exact file size in bytes.
        sig { returns(T.nilable(Integer)) }
        attr_reader :size

        sig { params(size: Integer).void }
        attr_writer :size

        # Search files by greater than or equal to file size. Can be used with `sizeLte`
        # to create a range.
        sig { returns(T.nilable(Integer)) }
        attr_reader :size_gte

        sig { params(size_gte: Integer).void }
        attr_writer :size_gte

        # Search files by less than or equal to file size. Can be used with `sizeGte` to
        # create a range.
        sig { returns(T.nilable(Integer)) }
        attr_reader :size_lte

        sig { params(size_lte: Integer).void }
        attr_writer :size_lte

        # Sort files by a given field.
        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :sort

        sig { params(sort: T::Array[String]).void }
        attr_writer :sort

        # Filter by provided file type.
        sig { returns(T.nilable(String)) }
        attr_reader :type

        sig { params(type: String).void }
        attr_writer :type

        # Search files by time of latest updated.
        sig { returns(T.nilable(Time)) }
        attr_reader :updated_at

        sig { params(updated_at: Time).void }
        attr_writer :updated_at

        # Search files by greater than or equal to time of latest update. Can be used with
        # `updatedAtLte` to create a range.
        sig { returns(T.nilable(Time)) }
        attr_reader :updated_at_gte

        sig { params(updated_at_gte: Time).void }
        attr_writer :updated_at_gte

        # Search files by less than or equal to time of latest update. Can be used with
        # `updatedAtGte` to create a range.
        sig { returns(T.nilable(Time)) }
        attr_reader :updated_at_lte

        sig { params(updated_at_lte: Time).void }
        attr_writer :updated_at_lte

        # Search by file URL.
        sig { returns(T.nilable(String)) }
        attr_reader :url

        sig { params(url: String).void }
        attr_writer :url

        # Search files by width of image or video.
        sig { returns(T.nilable(Integer)) }
        attr_reader :width

        sig { params(width: Integer).void }
        attr_writer :width

        # Search files by greater than or equal to width of image or video. Can be used
        # with `widthLte` to create a range.
        sig { returns(T.nilable(Integer)) }
        attr_reader :width_gte

        sig { params(width_gte: Integer).void }
        attr_writer :width_gte

        # Search files by less than or equal to width of image or video. Can be used with
        # `widthGte` to create a range.
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
          # Offset search results by this value. The default offset is 0 and the maximum
          # offset of items for a given search is 10,000. Narrow your search down if you are
          # reaching this limit.
          after: nil,
          # Search files by access. If `true`, will show only public files. If `false`, will
          # show only private files.
          allows_anonymous_access: nil,
          before: nil,
          # Search files by time of creation.
          created_at: nil,
          # Search files by greater than or equal to time of creation. Can be used with
          # `createdAtLte` to create a range.
          created_at_gte: nil,
          # Search files by less than or equal to time of creation. Can be used with
          # `createdAtGte` to create a range.
          created_at_lte: nil,
          # Search files by specified encoding.
          encoding: nil,
          # Search files by exact expires time. Time must be epoch time in milliseconds.
          expires_at: nil,
          # Search files by greater than or equal to expires time. Can be used with
          # `expiresAtLte` to create a range.
          expires_at_gte: nil,
          # Search files by less than or equal to expires time. Can be used with
          # `expiresAtGte` to create a range.
          expires_at_lte: nil,
          # Search files by given extension.
          extension: nil,
          # Search files by a specific md5 hash.
          file_md5: nil,
          # Search files by height of image or video.
          height: nil,
          # Search files by greater than or equal to height of image or video. Can be used
          # with `heightLte` to create a range.
          height_gte: nil,
          # Search files by less than or equal to height of image or video. Can be used with
          # `heightGte` to create a range.
          height_lte: nil,
          id_gte: nil,
          id_lte: nil,
          # Search by a list of file IDs.
          ids: nil,
          # If `true`, shows files that have been marked to be used in new content. If
          # `false`, shows files that should not be used in new content.
          is_usable_in_content: nil,
          # Number of items to return. Default limit is 10, maximum limit is 100.
          limit: nil,
          # Search for files containing the given name.
          name: nil,
          # Search files within given `folderId`.
          parent_folder_ids: nil,
          # Search files by path.
          path: nil,
          # A list of file properties to return.
          properties: nil,
          # Search files by exact file size in bytes.
          size: nil,
          # Search files by greater than or equal to file size. Can be used with `sizeLte`
          # to create a range.
          size_gte: nil,
          # Search files by less than or equal to file size. Can be used with `sizeGte` to
          # create a range.
          size_lte: nil,
          # Sort files by a given field.
          sort: nil,
          # Filter by provided file type.
          type: nil,
          # Search files by time of latest updated.
          updated_at: nil,
          # Search files by greater than or equal to time of latest update. Can be used with
          # `updatedAtLte` to create a range.
          updated_at_gte: nil,
          # Search files by less than or equal to time of latest update. Can be used with
          # `updatedAtGte` to create a range.
          updated_at_lte: nil,
          # Search by file URL.
          url: nil,
          # Search files by width of image or video.
          width: nil,
          # Search files by greater than or equal to width of image or video. Can be used
          # with `widthLte` to create a range.
          width_gte: nil,
          # Search files by less than or equal to width of image or video. Can be used with
          # `widthGte` to create a range.
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
