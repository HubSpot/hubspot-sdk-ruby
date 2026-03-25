# frozen_string_literal: true

module HubspotSDK
  module Models
    class Paging < HubspotSDK::Internal::Type::BaseModel
      # @!attribute next_
      #   Specifies the paging information needed to retrieve the next set of results in a
      #   paginated API response
      #
      #   @return [HubspotSDK::Models::NextPage, nil]
      optional :next_, -> { HubspotSDK::NextPage }, api_name: :next

      # @!attribute prev
      #   specifies the paging information needed to retrieve the previous set of results
      #   in a paginated API response
      #
      #   @return [HubspotSDK::Models::PreviousPage, nil]
      optional :prev, -> { HubspotSDK::PreviousPage }

      # @!method initialize(next_: nil, prev: nil)
      #   Some parameter documentations has been truncated, see
      #   {HubspotSDK::Models::Paging} for more details.
      #
      #   @param next_ [HubspotSDK::Models::NextPage] Specifies the paging information needed to retrieve the next set of results in a
      #
      #   @param prev [HubspotSDK::Models::PreviousPage] specifies the paging information needed to retrieve the previous set of results
    end
  end
end
