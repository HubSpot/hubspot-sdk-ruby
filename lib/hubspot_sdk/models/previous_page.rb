# frozen_string_literal: true

module HubSpotSDK
  module Models
    class PreviousPage < HubSpotSDK::Internal::Type::BaseModel
      # @!attribute before
      #   A string token used to identify the position before the current page in the
      #   pagination sequence.
      #
      #   @return [String]
      required :before, String

      # @!attribute link
      #   A URL string that provides a direct link to the previous page of results.
      #
      #   @return [String, nil]
      optional :link, String

      # @!method initialize(before:, link: nil)
      #   Some parameter documentations has been truncated, see
      #   {HubSpotSDK::Models::PreviousPage} for more details.
      #
      #   specifies the paging information needed to retrieve the previous set of results
      #   in a paginated API response
      #
      #   @param before [String] A string token used to identify the position before the current page in the pagi
      #
      #   @param link [String] A URL string that provides a direct link to the previous page of results.
    end
  end
end
