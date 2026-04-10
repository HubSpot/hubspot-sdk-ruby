# frozen_string_literal: true

module HubSpotSDK
  module Models
    class Paging < HubSpotSDK::Internal::Type::BaseModel
      # @!attribute next_
      #   Specifies the paging information needed to retrieve the next set of results in a
      #   paginated API response
      #
      #   @return [HubSpotSDK::Models::NextPage, nil]
      optional :next_, -> { HubSpotSDK::NextPage }, api_name: :next

      # @!attribute prev
      #   specifies the paging information needed to retrieve the previous set of results
      #   in a paginated API response
      #
      #   @return [HubSpotSDK::Models::PreviousPage, nil]
      optional :prev, -> { HubSpotSDK::PreviousPage }

      # @!method initialize(next_: nil, prev: nil)
      #   Some parameter documentations has been truncated, see
      #   {HubSpotSDK::Models::Paging} for more details.
      #
      #   @param next_ [HubSpotSDK::Models::NextPage] Specifies the paging information needed to retrieve the next set of results in a
      #
      #   @param prev [HubSpotSDK::Models::PreviousPage] specifies the paging information needed to retrieve the previous set of results
    end
  end
end
