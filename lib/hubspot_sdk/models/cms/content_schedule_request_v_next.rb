# frozen_string_literal: true

module HubspotSDK
  module Models
    module Cms
      class ContentScheduleRequestVNext < HubspotSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The ID of the object to be scheduled.
        #
        #   @return [String]
        required :id, String

        # @!attribute publish_date
        #   The date the object should transition from scheduled to published.
        #
        #   @return [Time]
        required :publish_date, Time, api_name: :publishDate

        # @!method initialize(id:, publish_date:)
        #   Request body object for scheduling the publish of content
        #
        #   @param id [String] The ID of the object to be scheduled.
        #
        #   @param publish_date [Time] The date the object should transition from scheduled to published.
      end
    end
  end
end
