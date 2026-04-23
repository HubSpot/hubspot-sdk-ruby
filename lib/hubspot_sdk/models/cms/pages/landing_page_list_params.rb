# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Cms
      module Pages
        # @see HubSpotSDK::Resources::Cms::Pages::LandingPages#list
        class LandingPageListParams < HubSpotSDK::Internal::Type::BaseModel
          extend HubSpotSDK::Internal::Type::RequestParameters::Converter
          include HubSpotSDK::Internal::Type::RequestParameters

          # @!attribute after
          #   A cursor token for pagination. Use the value from the previous response's
          #   paging.next.after field.
          #
          #   @return [String, nil]
          optional :after, String

          # @!attribute archived
          #   Whether to return only results that have been archived.
          #
          #   @return [Boolean, nil]
          optional :archived, HubSpotSDK::Internal::Type::Boolean

          # @!attribute created_after
          #   Filter landing pages created after a specific date and time.
          #
          #   @return [Time, nil]
          optional :created_after, Time

          # @!attribute created_at
          #   Filter landing pages by their creation timestamp.
          #
          #   @return [Time, nil]
          optional :created_at, Time

          # @!attribute created_before
          #   Filter landing pages created before a specific date and time.
          #
          #   @return [Time, nil]
          optional :created_before, Time

          # @!attribute limit
          #   The maximum number of results to display per page.
          #
          #   @return [Integer, nil]
          optional :limit, Integer

          # @!attribute property
          #   Specify which properties of the landing pages to include in the response.
          #
          #   @return [String, nil]
          optional :property, String

          # @!attribute sort
          #   Specify the order in which results are returned. Accepts an array of strings.
          #
          #   @return [Array<String>, nil]
          optional :sort, HubSpotSDK::Internal::Type::ArrayOf[String]

          # @!attribute updated_after
          #   Filter landing pages updated after a specific date and time.
          #
          #   @return [Time, nil]
          optional :updated_after, Time

          # @!attribute updated_at
          #   Filter landing pages by their last updated timestamp.
          #
          #   @return [Time, nil]
          optional :updated_at, Time

          # @!attribute updated_before
          #   Filter landing pages updated before a specific date and time.
          #
          #   @return [Time, nil]
          optional :updated_before, Time

          # @!method initialize(after: nil, archived: nil, created_after: nil, created_at: nil, created_before: nil, limit: nil, property: nil, sort: nil, updated_after: nil, updated_at: nil, updated_before: nil, request_options: {})
          #   Some parameter documentations has been truncated, see
          #   {HubSpotSDK::Models::Cms::Pages::LandingPageListParams} for more details.
          #
          #   @param after [String] A cursor token for pagination. Use the value from the previous response's paging
          #
          #   @param archived [Boolean] Whether to return only results that have been archived.
          #
          #   @param created_after [Time] Filter landing pages created after a specific date and time.
          #
          #   @param created_at [Time] Filter landing pages by their creation timestamp.
          #
          #   @param created_before [Time] Filter landing pages created before a specific date and time.
          #
          #   @param limit [Integer] The maximum number of results to display per page.
          #
          #   @param property [String] Specify which properties of the landing pages to include in the response.
          #
          #   @param sort [Array<String>] Specify the order in which results are returned. Accepts an array of strings.
          #
          #   @param updated_after [Time] Filter landing pages updated after a specific date and time.
          #
          #   @param updated_at [Time] Filter landing pages by their last updated timestamp.
          #
          #   @param updated_before [Time] Filter landing pages updated before a specific date and time.
          #
          #   @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
