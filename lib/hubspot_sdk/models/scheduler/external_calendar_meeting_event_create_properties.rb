# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Scheduler
      class ExternalCalendarMeetingEventCreateProperties < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute hs_meeting_end_time
        #   The time that the meeting should end in ISO 8601 format.
        #
        #   @return [Time]
        required :hs_meeting_end_time, Time

        # @!attribute hs_meeting_outcome
        #   The outcome of the meeting. Acceptable default values are: SCHEDULED, COMPLETED,
        #   RESCHEDULED, NO_SHOW, CANCELED. This property can be changed to include
        #   additional custom values.
        #
        #   @return [String]
        required :hs_meeting_outcome, String

        # @!attribute hs_meeting_start_time
        #   The time that the meeting should start in ISO 8601 format.
        #
        #   @return [Time]
        required :hs_meeting_start_time, Time

        # @!attribute hs_meeting_title
        #   The title of the meeting and calendar event.
        #
        #   @return [String]
        required :hs_meeting_title, String

        # @!attribute hs_timestamp
        #   The time that the meeting should start in ISO 8601 format. This value should be
        #   the same as `hs_meeting_start_time`.
        #
        #   @return [Time]
        required :hs_timestamp, Time

        # @!attribute hubspot_owner_id
        #   The ownerId of the HubSpot user who will host the meeting.
        #
        #   @return [String]
        required :hubspot_owner_id, String

        # @!attribute hs_activity_type
        #   The activity type of the meeting. Acceptable values are based on portal defined
        #   call and meeting types.
        #
        #   @return [String, nil]
        optional :hs_activity_type, String

        # @!attribute hs_attachment_ids
        #
        #   @return [Array<String>, nil]
        optional :hs_attachment_ids, HubSpotSDK::Internal::Type::ArrayOf[String]

        # @!attribute hs_attendee_owner_ids
        #
        #   @return [Array<String>, nil]
        optional :hs_attendee_owner_ids, HubSpotSDK::Internal::Type::ArrayOf[String]

        # @!attribute hs_internal_meeting_notes
        #   Internal notes related to the meeting.
        #
        #   @return [String, nil]
        optional :hs_internal_meeting_notes, String

        # @!attribute hs_meeting_body
        #   The description of the meeting and calendar event.
        #
        #   @return [String, nil]
        optional :hs_meeting_body, String

        # @!attribute hs_meeting_location
        #   The physical address, virtual location, or phone number where the meeting will
        #   take place.
        #
        #   @return [String, nil]
        optional :hs_meeting_location, String

        # @!attribute hs_meeting_location_type
        #   The type of location for the meeting. Acceptable values are: ADDRESS, CUSTOM,
        #   PHONE.
        #
        #   @return [Symbol, HubSpotSDK::Models::Scheduler::ExternalCalendarMeetingEventCreateProperties::HsMeetingLocationType, nil]
        optional :hs_meeting_location_type,
                 enum: -> { HubSpotSDK::Scheduler::ExternalCalendarMeetingEventCreateProperties::HsMeetingLocationType }

        # @!method initialize(hs_meeting_end_time:, hs_meeting_outcome:, hs_meeting_start_time:, hs_meeting_title:, hs_timestamp:, hubspot_owner_id:, hs_activity_type: nil, hs_attachment_ids: nil, hs_attendee_owner_ids: nil, hs_internal_meeting_notes: nil, hs_meeting_body: nil, hs_meeting_location: nil, hs_meeting_location_type: nil)
        #   Some parameter documentations has been truncated, see
        #   {HubSpotSDK::Models::Scheduler::ExternalCalendarMeetingEventCreateProperties}
        #   for more details.
        #
        #   @param hs_meeting_end_time [Time] The time that the meeting should end in ISO 8601 format.
        #
        #   @param hs_meeting_outcome [String] The outcome of the meeting. Acceptable default values are: SCHEDULED, COMPLETED,
        #
        #   @param hs_meeting_start_time [Time] The time that the meeting should start in ISO 8601 format.
        #
        #   @param hs_meeting_title [String] The title of the meeting and calendar event.
        #
        #   @param hs_timestamp [Time] The time that the meeting should start in ISO 8601 format. This value should be
        #
        #   @param hubspot_owner_id [String] The ownerId of the HubSpot user who will host the meeting.
        #
        #   @param hs_activity_type [String] The activity type of the meeting. Acceptable values are based on portal defined
        #
        #   @param hs_attachment_ids [Array<String>]
        #
        #   @param hs_attendee_owner_ids [Array<String>]
        #
        #   @param hs_internal_meeting_notes [String] Internal notes related to the meeting.
        #
        #   @param hs_meeting_body [String] The description of the meeting and calendar event.
        #
        #   @param hs_meeting_location [String] The physical address, virtual location, or phone number where the meeting will t
        #
        #   @param hs_meeting_location_type [Symbol, HubSpotSDK::Models::Scheduler::ExternalCalendarMeetingEventCreateProperties::HsMeetingLocationType] The type of location for the meeting. Acceptable values are: ADDRESS, CUSTOM, PH

        # The type of location for the meeting. Acceptable values are: ADDRESS, CUSTOM,
        # PHONE.
        #
        # @see HubSpotSDK::Models::Scheduler::ExternalCalendarMeetingEventCreateProperties#hs_meeting_location_type
        module HsMeetingLocationType
          extend HubSpotSDK::Internal::Type::Enum

          ADDRESS = :ADDRESS
          CUSTOM = :CUSTOM
          PHONE = :PHONE

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
