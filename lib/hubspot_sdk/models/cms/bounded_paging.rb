# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Cms
      class BoundedPaging < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute next_
        #
        #   @return [HubSpotSDK::Models::Cms::BoundedNextPage, nil]
        optional :next_, -> { HubSpotSDK::Cms::BoundedNextPage }, api_name: :next

        # @!method initialize(next_: nil)
        #   @param next_ [HubSpotSDK::Models::Cms::BoundedNextPage]
      end
    end
  end
end
