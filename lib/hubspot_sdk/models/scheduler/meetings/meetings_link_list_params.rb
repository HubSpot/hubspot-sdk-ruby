# frozen_string_literal: true

module HubspotSDK
  module Models
    module Scheduler
      module Meetings
        # @see HubspotSDK::Resources::Scheduler::Meetings::MeetingsLinks#list
        class MeetingsLinkListParams < HubspotSDK::Internal::Type::BaseModel
          extend HubspotSDK::Internal::Type::RequestParameters::Converter
          include HubspotSDK::Internal::Type::RequestParameters

          # @!attribute after
          #   The paging cursor token of the last successfully read resource will be returned
          #   as the `paging.next.after` JSON property of a paged response containing more
          #   results.
          #
          #   @return [String, nil]
          optional :after, String

          # @!attribute limit
          #   The maximum number of results to display per page.
          #
          #   @return [Integer, nil]
          optional :limit, Integer

          # @!attribute name
          #   Retrieve scheduling pages with a specified name.
          #
          #   @return [String, nil]
          optional :name, String

          # @!attribute organizer_user_id
          #   Filter the response to scheduling pages created by the specified user.
          #
          #   @return [String, nil]
          optional :organizer_user_id, String

          # @!attribute type
          #   Filter the response to the specific type of meeting.
          #
          #   @return [String, nil]
          optional :type, String

          # @!method initialize(after: nil, limit: nil, name: nil, organizer_user_id: nil, type: nil, request_options: {})
          #   Some parameter documentations has been truncated, see
          #   {HubspotSDK::Models::Scheduler::Meetings::MeetingsLinkListParams} for more
          #   details.
          #
          #   @param after [String] The paging cursor token of the last successfully read resource will be returned
          #
          #   @param limit [Integer] The maximum number of results to display per page.
          #
          #   @param name [String] Retrieve scheduling pages with a specified name.
          #
          #   @param organizer_user_id [String] Filter the response to scheduling pages created by the specified user.
          #
          #   @param type [String] Filter the response to the specific type of meeting.
          #
          #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
