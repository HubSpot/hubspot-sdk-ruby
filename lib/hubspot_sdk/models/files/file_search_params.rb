# frozen_string_literal: true

module HubspotSDK
  module Models
    module Files
      # @see HubspotSDK::Resources::Files::Files#search
      class FileSearchParams < HubspotSDK::Internal::Type::BaseModel
        extend HubspotSDK::Internal::Type::RequestParameters::Converter
        include HubspotSDK::Internal::Type::RequestParameters

        # @!attribute after
        #   Offset search results by this value. The default offset is 0 and the maximum
        #   offset of items for a given search is 10,000. Narrow your search down if you are
        #   reaching this limit.
        #
        #   @return [String, nil]
        optional :after, String

        # @!attribute allows_anonymous_access
        #   Search files by access. If 'true' will show only public files; if 'false' will
        #   show only private files
        #
        #   @return [Boolean, nil]
        optional :allows_anonymous_access, HubspotSDK::Internal::Type::Boolean

        # @!attribute before
        #   Search files updated before this timestamp. Time must be epoch time in
        #   milliseconds.
        #
        #   @return [String, nil]
        optional :before, String

        # @!attribute created_at
        #   Search files by exact time of creation. Time must be epoch time in milliseconds.
        #
        #   @return [Time, nil]
        optional :created_at, Time

        # @!attribute created_at_gte
        #   Search files by greater than or equal to time of creation. Can be used with
        #   createdAtLte to create a range.
        #
        #   @return [Time, nil]
        optional :created_at_gte, Time

        # @!attribute created_at_lte
        #   Search files by less than or equal to time of creation. Can be used with
        #   createdAtGte to create a range.
        #
        #   @return [Time, nil]
        optional :created_at_lte, Time

        # @!attribute encoding
        #   Search files by specified encoding.
        #
        #   @return [String, nil]
        optional :encoding, String

        # @!attribute expires_at
        #   Search files by exact expires time. Time must be epoch time in milliseconds.
        #
        #   @return [Time, nil]
        optional :expires_at, Time

        # @!attribute expires_at_gte
        #   Search files by greater than or equal to expires time. Can be used with
        #   expiresAtLte to create a range.
        #
        #   @return [Time, nil]
        optional :expires_at_gte, Time

        # @!attribute expires_at_lte
        #   Search files by less than or equal to expires time. Can be used with
        #   expiresAtGte to create a range.
        #
        #   @return [Time, nil]
        optional :expires_at_lte, Time

        # @!attribute extension
        #   Search files by given extension.
        #
        #   @return [String, nil]
        optional :extension, String

        # @!attribute file_md5
        #   Search files by specific md5 hash.
        #
        #   @return [String, nil]
        optional :file_md5, String

        # @!attribute height
        #   Search files by height of image or video.
        #
        #   @return [Integer, nil]
        optional :height, Integer

        # @!attribute height_gte
        #   Search files by greater than or equal to height of image or video. Can be used
        #   with heightLte to create a range.
        #
        #   @return [Integer, nil]
        optional :height_gte, Integer

        # @!attribute height_lte
        #   Search files by less than or equal to height of image or video. Can be used with
        #   heightGte to create a range.
        #
        #   @return [Integer, nil]
        optional :height_lte, Integer

        # @!attribute id_gte
        #   Search files by greater than or equal to ID. Can be used with idLte to create a
        #   range.
        #
        #   @return [Integer, nil]
        optional :id_gte, Integer

        # @!attribute id_lte
        #   Search files by less than or equal to ID. Can be used with idGte to create a
        #   range.
        #
        #   @return [Integer, nil]
        optional :id_lte, Integer

        # @!attribute ids
        #
        #   @return [Array<Integer>, nil]
        optional :ids, HubspotSDK::Internal::Type::ArrayOf[Integer]

        # @!attribute is_usable_in_content
        #   If true shows files that have been marked to be used in new content. It false
        #   shows files that should not be used in new content.
        #
        #   @return [Boolean, nil]
        optional :is_usable_in_content, HubspotSDK::Internal::Type::Boolean

        # @!attribute limit
        #   Number of items to return. Default limit is 10, maximum limit is 100.
        #
        #   @return [Integer, nil]
        optional :limit, Integer

        # @!attribute name
        #   Search for files containing the given name.
        #
        #   @return [String, nil]
        optional :name, String

        # @!attribute parent_folder_ids
        #
        #   @return [Array<Integer>, nil]
        optional :parent_folder_ids, HubspotSDK::Internal::Type::ArrayOf[Integer]

        # @!attribute path
        #   Search files by path.
        #
        #   @return [String, nil]
        optional :path, String

        # @!attribute properties
        #   Desired file properties in the return object.
        #
        #   @return [Array<String>, nil]
        optional :properties, HubspotSDK::Internal::Type::ArrayOf[String]

        # @!attribute size
        #   Search files by exact file size in bytes.
        #
        #   @return [Integer, nil]
        optional :size, Integer

        # @!attribute size_gte
        #   Search files by greater than or equal to file size. Can be used with sizeLte to
        #   create a range.
        #
        #   @return [Integer, nil]
        optional :size_gte, Integer

        # @!attribute size_lte
        #   Search files by less than or equal to file size. Can be used with sizeGte to
        #   create a range.
        #
        #   @return [Integer, nil]
        optional :size_lte, Integer

        # @!attribute sort
        #   Sort files by a given field.
        #
        #   @return [Array<String>, nil]
        optional :sort, HubspotSDK::Internal::Type::ArrayOf[String]

        # @!attribute type
        #   Search files by file type.
        #
        #   @return [String, nil]
        optional :type, String

        # @!attribute updated_at
        #   Search files by exact time of latest updated. Time must be epoch time in
        #   milliseconds.
        #
        #   @return [Time, nil]
        optional :updated_at, Time

        # @!attribute updated_at_gte
        #   Search files by greater than or equal to time of latest update. Can be used with
        #   updatedAtLte to create a range.
        #
        #   @return [Time, nil]
        optional :updated_at_gte, Time

        # @!attribute updated_at_lte
        #   Search files by less than or equal to time of latest update. Can be used with
        #   updatedAtGte to create a range.
        #
        #   @return [Time, nil]
        optional :updated_at_lte, Time

        # @!attribute url
        #   Search for given URL
        #
        #   @return [String, nil]
        optional :url, String

        # @!attribute width
        #   Search files by width of image or video.
        #
        #   @return [Integer, nil]
        optional :width, Integer

        # @!attribute width_gte
        #   Search files by greater than or equal to width of image or video. Can be used
        #   with widthLte to create a range.
        #
        #   @return [Integer, nil]
        optional :width_gte, Integer

        # @!attribute width_lte
        #   Search files by less than or equal to width of image or video. Can be used with
        #   widthGte to create a range.
        #
        #   @return [Integer, nil]
        optional :width_lte, Integer

        # @!method initialize(after: nil, allows_anonymous_access: nil, before: nil, created_at: nil, created_at_gte: nil, created_at_lte: nil, encoding: nil, expires_at: nil, expires_at_gte: nil, expires_at_lte: nil, extension: nil, file_md5: nil, height: nil, height_gte: nil, height_lte: nil, id_gte: nil, id_lte: nil, ids: nil, is_usable_in_content: nil, limit: nil, name: nil, parent_folder_ids: nil, path: nil, properties: nil, size: nil, size_gte: nil, size_lte: nil, sort: nil, type: nil, updated_at: nil, updated_at_gte: nil, updated_at_lte: nil, url: nil, width: nil, width_gte: nil, width_lte: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {HubspotSDK::Models::Files::FileSearchParams} for more details.
        #
        #   @param after [String] Offset search results by this value. The default offset is 0 and the maximum off
        #
        #   @param allows_anonymous_access [Boolean] Search files by access. If 'true' will show only public files; if 'false' will s
        #
        #   @param before [String] Search files updated before this timestamp. Time must be epoch time in milliseco
        #
        #   @param created_at [Time] Search files by exact time of creation. Time must be epoch time in milliseconds.
        #
        #   @param created_at_gte [Time] Search files by greater than or equal to time of creation. Can be used with crea
        #
        #   @param created_at_lte [Time] Search files by less than or equal to time of creation. Can be used with created
        #
        #   @param encoding [String] Search files by specified encoding.
        #
        #   @param expires_at [Time] Search files by exact expires time. Time must be epoch time in milliseconds.
        #
        #   @param expires_at_gte [Time] Search files by greater than or equal to expires time. Can be used with expiresA
        #
        #   @param expires_at_lte [Time] Search files by less than or equal to expires time. Can be used with expiresAtGt
        #
        #   @param extension [String] Search files by given extension.
        #
        #   @param file_md5 [String] Search files by specific md5 hash.
        #
        #   @param height [Integer] Search files by height of image or video.
        #
        #   @param height_gte [Integer] Search files by greater than or equal to height of image or video. Can be used w
        #
        #   @param height_lte [Integer] Search files by less than or equal to height of image or video. Can be used with
        #
        #   @param id_gte [Integer] Search files by greater than or equal to ID. Can be used with idLte to create a
        #
        #   @param id_lte [Integer] Search files by less than or equal to ID. Can be used with idGte to create a ran
        #
        #   @param ids [Array<Integer>]
        #
        #   @param is_usable_in_content [Boolean] If true shows files that have been marked to be used in new content. It false sh
        #
        #   @param limit [Integer] Number of items to return. Default limit is 10, maximum limit is 100.
        #
        #   @param name [String] Search for files containing the given name.
        #
        #   @param parent_folder_ids [Array<Integer>]
        #
        #   @param path [String] Search files by path.
        #
        #   @param properties [Array<String>] Desired file properties in the return object.
        #
        #   @param size [Integer] Search files by exact file size in bytes.
        #
        #   @param size_gte [Integer] Search files by greater than or equal to file size. Can be used with sizeLte to
        #
        #   @param size_lte [Integer] Search files by less than or equal to file size. Can be used with sizeGte to cre
        #
        #   @param sort [Array<String>] Sort files by a given field.
        #
        #   @param type [String] Search files by file type.
        #
        #   @param updated_at [Time] Search files by exact time of latest updated. Time must be epoch time in millise
        #
        #   @param updated_at_gte [Time] Search files by greater than or equal to time of latest update. Can be used with
        #
        #   @param updated_at_lte [Time] Search files by less than or equal to time of latest update. Can be used with up
        #
        #   @param url [String] Search for given URL
        #
        #   @param width [Integer] Search files by width of image or video.
        #
        #   @param width_gte [Integer] Search files by greater than or equal to width of image or video. Can be used wi
        #
        #   @param width_lte [Integer] Search files by less than or equal to width of image or video. Can be used with
        #
        #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
