# frozen_string_literal: true

module HubspotSDK
  module Models
    module Scheduler
      class ExternalCalendarMeetingEventCreateProperties < HubspotSDK::Internal::Type::BaseModel
        # @!attribute hs_meeting_end_time
        #
        #   @return [Time]
        required :hs_meeting_end_time, Time

        # @!attribute hs_meeting_outcome
        #
        #   @return [String]
        required :hs_meeting_outcome, String

        # @!attribute hs_meeting_start_time
        #
        #   @return [Time]
        required :hs_meeting_start_time, Time

        # @!attribute hs_meeting_title
        #
        #   @return [String]
        required :hs_meeting_title, String

        # @!attribute hs_timestamp
        #
        #   @return [Time]
        required :hs_timestamp, Time

        # @!attribute hs_activity_type
        #
        #   @return [String, nil]
        optional :hs_activity_type, String

        # @!attribute hs_attachment_ids
        #
        #   @return [Array<String>, nil]
        optional :hs_attachment_ids, HubspotSDK::Internal::Type::ArrayOf[String]

        # @!attribute hs_attendee_owner_ids
        #
        #   @return [Array<String>, nil]
        optional :hs_attendee_owner_ids, HubspotSDK::Internal::Type::ArrayOf[String]

        # @!attribute hs_internal_meeting_notes
        #
        #   @return [String, nil]
        optional :hs_internal_meeting_notes, String

        # @!attribute hs_meeting_body
        #
        #   @return [String, nil]
        optional :hs_meeting_body, String

        # @!attribute hs_meeting_location
        #
        #   @return [String, nil]
        optional :hs_meeting_location, String

        # @!attribute hs_meeting_location_type
        #
        #   @return [String, nil]
        optional :hs_meeting_location_type, String

        # @!attribute hubspot_owner_id
        #
        #   @return [String, nil]
        optional :hubspot_owner_id, String

        # @!method initialize(hs_meeting_end_time:, hs_meeting_outcome:, hs_meeting_start_time:, hs_meeting_title:, hs_timestamp:, hs_activity_type: nil, hs_attachment_ids: nil, hs_attendee_owner_ids: nil, hs_internal_meeting_notes: nil, hs_meeting_body: nil, hs_meeting_location: nil, hs_meeting_location_type: nil, hubspot_owner_id: nil)
        #   @param hs_meeting_end_time [Time]
        #   @param hs_meeting_outcome [String]
        #   @param hs_meeting_start_time [Time]
        #   @param hs_meeting_title [String]
        #   @param hs_timestamp [Time]
        #   @param hs_activity_type [String]
        #   @param hs_attachment_ids [Array<String>]
        #   @param hs_attendee_owner_ids [Array<String>]
        #   @param hs_internal_meeting_notes [String]
        #   @param hs_meeting_body [String]
        #   @param hs_meeting_location [String]
        #   @param hs_meeting_location_type [String]
        #   @param hubspot_owner_id [String]
      end
    end
  end
end
