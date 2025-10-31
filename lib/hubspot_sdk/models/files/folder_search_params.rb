# frozen_string_literal: true

module HubspotSDK
  module Models
    module Files
      # @see HubspotSDK::Resources::Files::Folders#search
      class FolderSearchParams < HubspotSDK::Internal::Type::BaseModel
        extend HubspotSDK::Internal::Type::RequestParameters::Converter
        include HubspotSDK::Internal::Type::RequestParameters

        # @!attribute after
        #   Offset search results by this value. The default offset is 0 and the maximum
        #   offset of items for a given search is 10,000. Narrow your search down if you are
        #   reaching this limit.
        #
        #   @return [String, nil]
        optional :after, String

        # @!attribute before
        #
        #   @return [String, nil]
        optional :before, String

        # @!attribute created_at
        #   Search folders by exact time of creation. Time must be epoch time in
        #   milliseconds.
        #
        #   @return [Time, nil]
        optional :created_at, Time

        # @!attribute created_at_gte
        #   Search folders by greater than or equal to time of creation. Can be used with
        #   createdAtLte to create a range.
        #
        #   @return [Time, nil]
        optional :created_at_gte, Time

        # @!attribute created_at_lte
        #   Search folders by less than or equal to time of creation. Can be used with
        #   createdAtGte to create a range.
        #
        #   @return [Time, nil]
        optional :created_at_lte, Time

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
        optional :ids, HubspotSDK::Internal::Type::ArrayOf[Integer]

        # @!attribute limit
        #   Number of items to return. Default limit is 10, maximum limit is 100.
        #
        #   @return [Integer, nil]
        optional :limit, Integer

        # @!attribute name
        #   Search for folders containing the specified name.
        #
        #   @return [String, nil]
        optional :name, String

        # @!attribute parent_folder_ids
        #   Search folders with the given parent folderId.
        #
        #   @return [Array<Integer>, nil]
        optional :parent_folder_ids, HubspotSDK::Internal::Type::ArrayOf[Integer]

        # @!attribute path
        #   Search folders by path.
        #
        #   @return [String, nil]
        optional :path, String

        # @!attribute properties
        #   Properties that should be included in the returned folders.
        #
        #   @return [Array<String>, nil]
        optional :properties, HubspotSDK::Internal::Type::ArrayOf[String]

        # @!attribute sort
        #   Sort results by given property. For example -name sorts by name field
        #   descending, name sorts by name field ascending.
        #
        #   @return [Array<String>, nil]
        optional :sort, HubspotSDK::Internal::Type::ArrayOf[String]

        # @!attribute updated_at
        #   Search folders by exact time of latest updated. Time must be epoch time in
        #   milliseconds.
        #
        #   @return [Time, nil]
        optional :updated_at, Time

        # @!attribute updated_at_gte
        #   Search folders by greater than or equal to time of latest update. Can be used
        #   with updatedAtLte to create a range.
        #
        #   @return [Time, nil]
        optional :updated_at_gte, Time

        # @!attribute updated_at_lte
        #   Search folders by less than or equal to time of latest update. Can be used with
        #   updatedAtGte to create a range.
        #
        #   @return [Time, nil]
        optional :updated_at_lte, Time

        # @!method initialize(after: nil, before: nil, created_at: nil, created_at_gte: nil, created_at_lte: nil, id_gte: nil, id_lte: nil, ids: nil, limit: nil, name: nil, parent_folder_ids: nil, path: nil, properties: nil, sort: nil, updated_at: nil, updated_at_gte: nil, updated_at_lte: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {HubspotSDK::Models::Files::FolderSearchParams} for more details.
        #
        #   @param after [String] Offset search results by this value. The default offset is 0 and the maximum off
        #
        #   @param before [String]
        #
        #   @param created_at [Time] Search folders by exact time of creation. Time must be epoch time in millisecond
        #
        #   @param created_at_gte [Time] Search folders by greater than or equal to time of creation. Can be used with cr
        #
        #   @param created_at_lte [Time] Search folders by less than or equal to time of creation. Can be used with creat
        #
        #   @param id_gte [Integer]
        #
        #   @param id_lte [Integer]
        #
        #   @param ids [Array<Integer>]
        #
        #   @param limit [Integer] Number of items to return. Default limit is 10, maximum limit is 100.
        #
        #   @param name [String] Search for folders containing the specified name.
        #
        #   @param parent_folder_ids [Array<Integer>] Search folders with the given parent folderId.
        #
        #   @param path [String] Search folders by path.
        #
        #   @param properties [Array<String>] Properties that should be included in the returned folders.
        #
        #   @param sort [Array<String>] Sort results by given property. For example -name sorts by name field descending
        #
        #   @param updated_at [Time] Search folders by exact time of latest updated. Time must be epoch time in milli
        #
        #   @param updated_at_gte [Time] Search folders by greater than or equal to time of latest update. Can be used wi
        #
        #   @param updated_at_lte [Time] Search folders by less than or equal to time of latest update. Can be used with
        #
        #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
