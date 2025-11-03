# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      class TimelineEventResponse < HubspotSDK::Internal::Type::BaseModel
        # @!attribute id
        #   Identifier for the event. This should be unique to the app and event template.
        #   If you use the same ID for different CRM objects, the last to be processed will
        #   win and the first will not have a record. You can also use `{{uuid}}` anywhere
        #   in the ID to generate a unique string, guaranteeing uniqueness.
        #
        #   @return [String]
        required :id, String

        # @!attribute event_template_id
        #   The event template ID.
        #
        #   @return [String]
        required :event_template_id, String, api_name: :eventTemplateId

        # @!attribute object_type
        #   The ObjectType associated with the EventTemplate.
        #
        #   @return [String]
        required :object_type, String, api_name: :objectType

        # @!attribute tokens
        #   A collection of token keys and values associated with the template tokens.
        #
        #   @return [Hash{Symbol=>String}]
        required :tokens, HubspotSDK::Internal::Type::HashOf[String]

        # @!attribute created_at
        #
        #   @return [Time, nil]
        optional :created_at, Time, api_name: :createdAt

        # @!attribute domain
        #   The event domain (often paired with utk).
        #
        #   @return [String, nil]
        optional :domain, String

        # @!attribute email
        #   The email address used for contact-specific events. This can be used to identify
        #   existing contacts, create new ones, or change the email for an existing contact
        #   (if paired with the `objectId`).
        #
        #   @return [String, nil]
        optional :email, String

        # @!attribute extra_data
        #   Additional event-specific data that can be interpreted by the template's
        #   markdown.
        #
        #   @return [Object, nil]
        optional :extra_data, HubspotSDK::Internal::Type::Unknown, api_name: :extraData

        # @!attribute object_id_
        #   The CRM object identifier. This is required for every event other than contacts
        #   (where utk or email can be used).
        #
        #   @return [String, nil]
        optional :object_id_, String, api_name: :objectId

        # @!attribute timeline_i_frame
        #
        #   @return [HubspotSDK::Models::Crm::TimelineEventIFrame, nil]
        optional :timeline_i_frame, -> { HubspotSDK::Crm::TimelineEventIFrame }, api_name: :timelineIFrame

        # @!attribute timestamp
        #   The time the event occurred. If not passed in, the curren time will be assumed.
        #   This is used to determine where an event is shown on a CRM object's timeline.
        #
        #   @return [Time, nil]
        optional :timestamp, Time

        # @!attribute utk
        #   Use the `utk` parameter to associate an event with a contact by `usertoken`.
        #   This is recommended if you don't know a user's email, but have an identifying
        #   user token in your cookie.
        #
        #   @return [String, nil]
        optional :utk, String

        # @!method initialize(id:, event_template_id:, object_type:, tokens:, created_at: nil, domain: nil, email: nil, extra_data: nil, object_id_: nil, timeline_i_frame: nil, timestamp: nil, utk: nil)
        #   Some parameter documentations has been truncated, see
        #   {HubspotSDK::Models::Crm::TimelineEventResponse} for more details.
        #
        #   The current state of the timeline event.
        #
        #   @param id [String] Identifier for the event. This should be unique to the app and event template. I
        #
        #   @param event_template_id [String] The event template ID.
        #
        #   @param object_type [String] The ObjectType associated with the EventTemplate.
        #
        #   @param tokens [Hash{Symbol=>String}] A collection of token keys and values associated with the template tokens.
        #
        #   @param created_at [Time]
        #
        #   @param domain [String] The event domain (often paired with utk).
        #
        #   @param email [String] The email address used for contact-specific events. This can be used to identify
        #
        #   @param extra_data [Object] Additional event-specific data that can be interpreted by the template's markdow
        #
        #   @param object_id_ [String] The CRM object identifier. This is required for every event other than contacts
        #
        #   @param timeline_i_frame [HubspotSDK::Models::Crm::TimelineEventIFrame]
        #
        #   @param timestamp [Time] The time the event occurred. If not passed in, the curren time will be assumed.
        #
        #   @param utk [String] Use the `utk` parameter to associate an event with a contact by `usertoken`. Thi
      end
    end
  end
end
