# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      class TimelineEvent < HubspotSDK::Internal::Type::BaseModel
        # @!attribute event_template_id
        #   The event template ID.
        #
        #   @return [String]
        required :event_template_id, String, api_name: :eventTemplateId

        # @!attribute tokens
        #   A collection of token keys and values associated with the template tokens.
        #
        #   @return [Hash{Symbol=>String}]
        required :tokens, HubspotSDK::Internal::Type::HashOf[String]

        # @!attribute id
        #   Identifier for the event. This is optional, and we recommend you do not pass
        #   this in. We will create one for you if you omit this. You can also use
        #   `{{uuid}}` anywhere in the ID to generate a unique string, guaranteeing
        #   uniqueness.
        #
        #   @return [String, nil]
        optional :id, String

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

        # @!method initialize(event_template_id:, tokens:, id: nil, domain: nil, email: nil, extra_data: nil, object_id_: nil, timeline_i_frame: nil, timestamp: nil, utk: nil)
        #   Some parameter documentations has been truncated, see
        #   {HubspotSDK::Models::Crm::TimelineEvent} for more details.
        #
        #   The state of the timeline event.
        #
        #   @param event_template_id [String] The event template ID.
        #
        #   @param tokens [Hash{Symbol=>String}] A collection of token keys and values associated with the template tokens.
        #
        #   @param id [String] Identifier for the event. This is optional, and we recommend you do not pass thi
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
