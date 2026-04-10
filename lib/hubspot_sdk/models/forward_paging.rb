# frozen_string_literal: true

module HubSpotSDK
  module Models
    class ForwardPaging < HubSpotSDK::Internal::Type::BaseModel
      # @!attribute next_
      #   Specifies the paging information needed to retrieve the next set of results in a
      #   paginated API response
      #
      #   @return [HubSpotSDK::Models::NextPage, nil]
      optional :next_, -> { HubSpotSDK::NextPage }, api_name: :next

      # @!method initialize(next_: nil)
      #   Some parameter documentations has been truncated, see
      #   {HubSpotSDK::Models::ForwardPaging} for more details.
      #
      #   @param next_ [HubSpotSDK::Models::NextPage] Specifies the paging information needed to retrieve the next set of results in a
    end
  end
end
