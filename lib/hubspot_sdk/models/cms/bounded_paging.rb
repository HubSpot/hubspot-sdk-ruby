# frozen_string_literal: true

module HubspotSDK
  module Models
    module Cms
      class BoundedPaging < HubspotSDK::Internal::Type::BaseModel
        # @!attribute next_
        #
        #   @return [HubspotSDK::Models::Cms::BoundedNextPage, nil]
        optional :next_, -> { HubspotSDK::Cms::BoundedNextPage }, api_name: :next

        # @!method initialize(next_: nil)
        #   @param next_ [HubspotSDK::Models::Cms::BoundedNextPage]
      end
    end
  end
end
