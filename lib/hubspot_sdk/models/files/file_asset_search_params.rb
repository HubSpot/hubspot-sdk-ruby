# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Files
      # @see HubSpotSDK::Resources::Files::FileAssets#search
      class FileAssetSearchParams < HubSpotSDK::Internal::Type::BaseModel
        extend HubSpotSDK::Internal::Type::RequestParameters::Converter
        include HubSpotSDK::Internal::Type::RequestParameters

        # @!attribute after
        #   The paging cursor token of the last successfully read resource will be returned
        #   as the `paging.next.after` JSON property of a paged response containing more
        #   results.
        #
        #   @return [String, nil]
        optional :after, String

        # @!attribute allows_anonymous_access
        #
        #   @return [Boolean, nil]
        optional :allows_anonymous_access, HubSpotSDK::Internal::Type::Boolean

        # @!attribute before
        #
        #   @return [String, nil]
        optional :before, String

        # @!attribute created_at
        #
        #   @return [Time, nil]
        optional :created_at, Time

        # @!attribute created_at_gte
        #
        #   @return [Time, nil]
        optional :created_at_gte, Time

        # @!attribute created_at_lte
        #
        #   @return [Time, nil]
        optional :created_at_lte, Time

        # @!attribute encoding
        #
        #   @return [String, nil]
        optional :encoding, String

        # @!attribute expires_at
        #
        #   @return [Time, nil]
        optional :expires_at, Time

        # @!attribute expires_at_gte
        #
        #   @return [Time, nil]
        optional :expires_at_gte, Time

        # @!attribute expires_at_lte
        #
        #   @return [Time, nil]
        optional :expires_at_lte, Time

        # @!attribute extension
        #
        #   @return [String, nil]
        optional :extension, String

        # @!attribute file_md5
        #
        #   @return [String, nil]
        optional :file_md5, String

        # @!attribute height
        #
        #   @return [Integer, nil]
        optional :height, Integer

        # @!attribute height_gte
        #
        #   @return [Integer, nil]
        optional :height_gte, Integer

        # @!attribute height_lte
        #
        #   @return [Integer, nil]
        optional :height_lte, Integer

        # @!attribute id_gte
        #
        #   @return [Integer, nil]
        optional :id_gte, Integer

        # @!attribute id_lte
        #
        #   @return [Integer, nil]
        optional :id_lte, Integer

        # @!attribute ids
        #
        #   @return [Array<Integer>, nil]
        optional :ids, HubSpotSDK::Internal::Type::ArrayOf[Integer]

        # @!attribute is_usable_in_content
        #
        #   @return [Boolean, nil]
        optional :is_usable_in_content, HubSpotSDK::Internal::Type::Boolean

        # @!attribute limit
        #   The maximum number of results to display per page.
        #
        #   @return [Integer, nil]
        optional :limit, Integer

        # @!attribute name
        #
        #   @return [String, nil]
        optional :name, String

        # @!attribute parent_folder_ids
        #
        #   @return [Array<Integer>, nil]
        optional :parent_folder_ids, HubSpotSDK::Internal::Type::ArrayOf[Integer]

        # @!attribute path
        #
        #   @return [String, nil]
        optional :path, String

        # @!attribute properties
        #
        #   @return [Array<String>, nil]
        optional :properties, HubSpotSDK::Internal::Type::ArrayOf[String]

        # @!attribute size
        #
        #   @return [Integer, nil]
        optional :size, Integer

        # @!attribute size_gte
        #
        #   @return [Integer, nil]
        optional :size_gte, Integer

        # @!attribute size_lte
        #
        #   @return [Integer, nil]
        optional :size_lte, Integer

        # @!attribute sort
        #
        #   @return [Array<String>, nil]
        optional :sort, HubSpotSDK::Internal::Type::ArrayOf[String]

        # @!attribute type
        #
        #   @return [String, nil]
        optional :type, String

        # @!attribute updated_at
        #
        #   @return [Time, nil]
        optional :updated_at, Time

        # @!attribute updated_at_gte
        #
        #   @return [Time, nil]
        optional :updated_at_gte, Time

        # @!attribute updated_at_lte
        #
        #   @return [Time, nil]
        optional :updated_at_lte, Time

        # @!attribute url
        #
        #   @return [String, nil]
        optional :url, String

        # @!attribute width
        #
        #   @return [Integer, nil]
        optional :width, Integer

        # @!attribute width_gte
        #
        #   @return [Integer, nil]
        optional :width_gte, Integer

        # @!attribute width_lte
        #
        #   @return [Integer, nil]
        optional :width_lte, Integer

        # @!method initialize(after: nil, allows_anonymous_access: nil, before: nil, created_at: nil, created_at_gte: nil, created_at_lte: nil, encoding: nil, expires_at: nil, expires_at_gte: nil, expires_at_lte: nil, extension: nil, file_md5: nil, height: nil, height_gte: nil, height_lte: nil, id_gte: nil, id_lte: nil, ids: nil, is_usable_in_content: nil, limit: nil, name: nil, parent_folder_ids: nil, path: nil, properties: nil, size: nil, size_gte: nil, size_lte: nil, sort: nil, type: nil, updated_at: nil, updated_at_gte: nil, updated_at_lte: nil, url: nil, width: nil, width_gte: nil, width_lte: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {HubSpotSDK::Models::Files::FileAssetSearchParams} for more details.
        #
        #   @param after [String] The paging cursor token of the last successfully read resource will be returned
        #
        #   @param allows_anonymous_access [Boolean]
        #
        #   @param before [String]
        #
        #   @param created_at [Time]
        #
        #   @param created_at_gte [Time]
        #
        #   @param created_at_lte [Time]
        #
        #   @param encoding [String]
        #
        #   @param expires_at [Time]
        #
        #   @param expires_at_gte [Time]
        #
        #   @param expires_at_lte [Time]
        #
        #   @param extension [String]
        #
        #   @param file_md5 [String]
        #
        #   @param height [Integer]
        #
        #   @param height_gte [Integer]
        #
        #   @param height_lte [Integer]
        #
        #   @param id_gte [Integer]
        #
        #   @param id_lte [Integer]
        #
        #   @param ids [Array<Integer>]
        #
        #   @param is_usable_in_content [Boolean]
        #
        #   @param limit [Integer] The maximum number of results to display per page.
        #
        #   @param name [String]
        #
        #   @param parent_folder_ids [Array<Integer>]
        #
        #   @param path [String]
        #
        #   @param properties [Array<String>]
        #
        #   @param size [Integer]
        #
        #   @param size_gte [Integer]
        #
        #   @param size_lte [Integer]
        #
        #   @param sort [Array<String>]
        #
        #   @param type [String]
        #
        #   @param updated_at [Time]
        #
        #   @param updated_at_gte [Time]
        #
        #   @param updated_at_lte [Time]
        #
        #   @param url [String]
        #
        #   @param width [Integer]
        #
        #   @param width_gte [Integer]
        #
        #   @param width_lte [Integer]
        #
        #   @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
