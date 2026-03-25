# frozen_string_literal: true

module HubspotSDK
  module Models
    module Files
      # @see HubspotSDK::Resources::Files::Folders#search
      class FolderSearchParams < HubspotSDK::Internal::Type::BaseModel
        extend HubspotSDK::Internal::Type::RequestParameters::Converter
        include HubspotSDK::Internal::Type::RequestParameters

        # @!attribute after
        #   The paging cursor token of the last successfully read resource will be returned
        #   as the `paging.next.after` JSON property of a paged response containing more
        #   results.
        #
        #   @return [String, nil]
        optional :after, String

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
        optional :parent_folder_ids, HubspotSDK::Internal::Type::ArrayOf[Integer]

        # @!attribute path
        #
        #   @return [String, nil]
        optional :path, String

        # @!attribute properties
        #
        #   @return [Array<String>, nil]
        optional :properties, HubspotSDK::Internal::Type::ArrayOf[String]

        # @!attribute sort
        #
        #   @return [Array<String>, nil]
        optional :sort, HubspotSDK::Internal::Type::ArrayOf[String]

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

        # @!method initialize(after: nil, before: nil, created_at: nil, created_at_gte: nil, created_at_lte: nil, id_gte: nil, id_lte: nil, ids: nil, limit: nil, name: nil, parent_folder_ids: nil, path: nil, properties: nil, sort: nil, updated_at: nil, updated_at_gte: nil, updated_at_lte: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {HubspotSDK::Models::Files::FolderSearchParams} for more details.
        #
        #   @param after [String] The paging cursor token of the last successfully read resource will be returned
        #
        #   @param before [String]
        #
        #   @param created_at [Time]
        #
        #   @param created_at_gte [Time]
        #
        #   @param created_at_lte [Time]
        #
        #   @param id_gte [Integer]
        #
        #   @param id_lte [Integer]
        #
        #   @param ids [Array<Integer>]
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
        #   @param sort [Array<String>]
        #
        #   @param updated_at [Time]
        #
        #   @param updated_at_gte [Time]
        #
        #   @param updated_at_lte [Time]
        #
        #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
