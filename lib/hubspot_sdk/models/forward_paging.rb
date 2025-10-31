# frozen_string_literal: true

module HubspotSDK
  module Models
    class ForwardPaging < HubspotSDK::Internal::Type::BaseModel
      # @!attribute next_
      #   Specifies the paging information needed to retrieve the next set of results in a
      #   paginated API response
      #
      #   @return [HubspotSDK::Models::NextPage, nil]
      optional :next_, -> { HubspotSDK::NextPage }, api_name: :next

      # @!method initialize(next_: nil)
      #   Some parameter documentations has been truncated, see
      #   {HubspotSDK::Models::ForwardPaging} for more details.
      #
      #   @param next_ [HubspotSDK::Models::NextPage] Specifies the paging information needed to retrieve the next set of results in a
    end
  end
end
