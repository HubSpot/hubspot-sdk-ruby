# frozen_string_literal: true

module HubspotSDK
  module Models
    class NextPage < HubspotSDK::Internal::Type::BaseModel
      # @!attribute after
      #   A paging cursor token for retrieving subsequent pages.
      #
      #   @return [String]
      required :after, String

      # @!attribute link
      #   A URL that can be used to retrieve the next page results.
      #
      #   @return [String, nil]
      optional :link, String

      # @!method initialize(after:, link: nil)
      #   Specifies the paging information needed to retrieve the next set of results in a
      #   paginated API response
      #
      #   @param after [String] A paging cursor token for retrieving subsequent pages.
      #
      #   @param link [String] A URL that can be used to retrieve the next page results.
    end
  end
end
