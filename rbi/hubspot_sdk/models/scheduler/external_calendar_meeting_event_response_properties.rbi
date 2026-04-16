# typed: strong

module HubSpotSDK
  module Models
    module Scheduler
      class ExternalCalendarMeetingEventResponseProperties < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Scheduler::ExternalCalendarMeetingEventResponseProperties,
              HubSpotSDK::Internal::AnyHash
            )
          end

        # The source of the engagement, will always be `MEETINGS`.
        sig do
          returns(
            HubSpotSDK::Scheduler::ExternalCalendarMeetingEventResponseProperties::HsEngagementSource::TaggedSymbol
          )
        end
        attr_accessor :hs_engagement_source

        # The ID associated with the process created the engagement. Should always be
        # empty when creating meeting events through this API.
        sig { returns(String) }
        attr_accessor :hs_engagement_source_id

        # The end time of the meeting in ISO 8601 format.
        sig { returns(Time) }
        attr_accessor :hs_meeting_end_time

        # The outcome of the meeting. Acceptable default values are: SCHEDULED, COMPLETED,
        # RESCHEDULED, NO_SHOW, CANCELED. This property can be changed to include
        # additional custom values.
        sig { returns(String) }
        attr_accessor :hs_meeting_outcome

        # The start time of the meeting in ISO 8601 format.
        sig { returns(Time) }
        attr_accessor :hs_meeting_start_time

        # The title of the meeting and calendar event.
        sig { returns(String) }
        attr_accessor :hs_meeting_title

        # The time that the meeting should start in ISO 8601 format. This value should be
        # the same as `hs_meeting_start_time`.
        sig { returns(Time) }
        attr_accessor :hs_timestamp

        # The activity type of the meeting. Acceptable values are based on portal defined
        # call and meeting types.
        sig { returns(T.nilable(String)) }
        attr_reader :hs_activity_type

        sig { params(hs_activity_type: String).void }
        attr_writer :hs_activity_type

        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :hs_attachment_ids

        sig { params(hs_attachment_ids: T::Array[String]).void }
        attr_writer :hs_attachment_ids

        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :hs_attendee_owner_ids

        sig { params(hs_attendee_owner_ids: T::Array[String]).void }
        attr_writer :hs_attendee_owner_ids

        # Whether to include the meeting description in the reminder.
        sig { returns(T.nilable(String)) }
        attr_reader :hs_include_description_in_reminder

        sig { params(hs_include_description_in_reminder: String).void }
        attr_writer :hs_include_description_in_reminder

        # Internal notes related to the meeting.
        sig { returns(T.nilable(String)) }
        attr_reader :hs_internal_meeting_notes

        sig { params(hs_internal_meeting_notes: String).void }
        attr_writer :hs_internal_meeting_notes

        # The description of the meeting and calendar event.
        sig { returns(T.nilable(String)) }
        attr_reader :hs_meeting_body

        sig { params(hs_meeting_body: String).void }
        attr_writer :hs_meeting_body

        # The calendar event URL for the meeting.
        sig { returns(T.nilable(String)) }
        attr_reader :hs_meeting_external_url

        sig { params(hs_meeting_external_url: String).void }
        attr_writer :hs_meeting_external_url

        # The physical address, virtual location, or phone number where the meeting will
        # take place.
        sig { returns(T.nilable(String)) }
        attr_reader :hs_meeting_location

        sig { params(hs_meeting_location: String).void }
        attr_writer :hs_meeting_location

        # The type of location for the meeting. Acceptable values are: ADDRESS, CUSTOM,
        # PHONE.
        sig do
          returns(
            T.nilable(
              HubSpotSDK::Scheduler::ExternalCalendarMeetingEventResponseProperties::HsMeetingLocationType::TaggedSymbol
            )
          )
        end
        attr_reader :hs_meeting_location_type

        sig do
          params(
            hs_meeting_location_type:
              HubSpotSDK::Scheduler::ExternalCalendarMeetingEventResponseProperties::HsMeetingLocationType::OrSymbol
          ).void
        end
        attr_writer :hs_meeting_location_type

        # The unique ID of the created calendar event.
        sig { returns(T.nilable(String)) }
        attr_reader :hs_unique_id

        sig { params(hs_unique_id: String).void }
        attr_writer :hs_unique_id

        # The owner ID of the HubSpot user hosting the meeting.
        sig { returns(T.nilable(String)) }
        attr_reader :hubspot_owner_id

        sig { params(hubspot_owner_id: String).void }
        attr_writer :hubspot_owner_id

        sig do
          params(
            hs_engagement_source:
              HubSpotSDK::Scheduler::ExternalCalendarMeetingEventResponseProperties::HsEngagementSource::OrSymbol,
            hs_engagement_source_id: String,
            hs_meeting_end_time: Time,
            hs_meeting_outcome: String,
            hs_meeting_start_time: Time,
            hs_meeting_title: String,
            hs_timestamp: Time,
            hs_activity_type: String,
            hs_attachment_ids: T::Array[String],
            hs_attendee_owner_ids: T::Array[String],
            hs_include_description_in_reminder: String,
            hs_internal_meeting_notes: String,
            hs_meeting_body: String,
            hs_meeting_external_url: String,
            hs_meeting_location: String,
            hs_meeting_location_type:
              HubSpotSDK::Scheduler::ExternalCalendarMeetingEventResponseProperties::HsMeetingLocationType::OrSymbol,
            hs_unique_id: String,
            hubspot_owner_id: String
          ).returns(T.attached_class)
        end
        def self.new(
          # The source of the engagement, will always be `MEETINGS`.
          hs_engagement_source:,
          # The ID associated with the process created the engagement. Should always be
          # empty when creating meeting events through this API.
          hs_engagement_source_id:,
          # The end time of the meeting in ISO 8601 format.
          hs_meeting_end_time:,
          # The outcome of the meeting. Acceptable default values are: SCHEDULED, COMPLETED,
          # RESCHEDULED, NO_SHOW, CANCELED. This property can be changed to include
          # additional custom values.
          hs_meeting_outcome:,
          # The start time of the meeting in ISO 8601 format.
          hs_meeting_start_time:,
          # The title of the meeting and calendar event.
          hs_meeting_title:,
          # The time that the meeting should start in ISO 8601 format. This value should be
          # the same as `hs_meeting_start_time`.
          hs_timestamp:,
          # The activity type of the meeting. Acceptable values are based on portal defined
          # call and meeting types.
          hs_activity_type: nil,
          hs_attachment_ids: nil,
          hs_attendee_owner_ids: nil,
          # Whether to include the meeting description in the reminder.
          hs_include_description_in_reminder: nil,
          # Internal notes related to the meeting.
          hs_internal_meeting_notes: nil,
          # The description of the meeting and calendar event.
          hs_meeting_body: nil,
          # The calendar event URL for the meeting.
          hs_meeting_external_url: nil,
          # The physical address, virtual location, or phone number where the meeting will
          # take place.
          hs_meeting_location: nil,
          # The type of location for the meeting. Acceptable values are: ADDRESS, CUSTOM,
          # PHONE.
          hs_meeting_location_type: nil,
          # The unique ID of the created calendar event.
          hs_unique_id: nil,
          # The owner ID of the HubSpot user hosting the meeting.
          hubspot_owner_id: nil
        )
        end

        sig do
          override.returns(
            {
              hs_engagement_source:
                HubSpotSDK::Scheduler::ExternalCalendarMeetingEventResponseProperties::HsEngagementSource::TaggedSymbol,
              hs_engagement_source_id: String,
              hs_meeting_end_time: Time,
              hs_meeting_outcome: String,
              hs_meeting_start_time: Time,
              hs_meeting_title: String,
              hs_timestamp: Time,
              hs_activity_type: String,
              hs_attachment_ids: T::Array[String],
              hs_attendee_owner_ids: T::Array[String],
              hs_include_description_in_reminder: String,
              hs_internal_meeting_notes: String,
              hs_meeting_body: String,
              hs_meeting_external_url: String,
              hs_meeting_location: String,
              hs_meeting_location_type:
                HubSpotSDK::Scheduler::ExternalCalendarMeetingEventResponseProperties::HsMeetingLocationType::TaggedSymbol,
              hs_unique_id: String,
              hubspot_owner_id: String
            }
          )
        end
        def to_hash
        end

        # The source of the engagement, will always be `MEETINGS`.
        module HsEngagementSource
          extend HubSpotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubSpotSDK::Scheduler::ExternalCalendarMeetingEventResponseProperties::HsEngagementSource
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ACADEMY =
            T.let(
              :ACADEMY,
              HubSpotSDK::Scheduler::ExternalCalendarMeetingEventResponseProperties::HsEngagementSource::TaggedSymbol
            )
          ACCEPTANCE_TEST =
            T.let(
              :ACCEPTANCE_TEST,
              HubSpotSDK::Scheduler::ExternalCalendarMeetingEventResponseProperties::HsEngagementSource::TaggedSymbol
            )
          ACTIVITY_AUTO_ASSOCIATE =
            T.let(
              :ACTIVITY_AUTO_ASSOCIATE,
              HubSpotSDK::Scheduler::ExternalCalendarMeetingEventResponseProperties::HsEngagementSource::TaggedSymbol
            )
          ACTIVITY_LOG_REVERT =
            T.let(
              :ACTIVITY_LOG_REVERT,
              HubSpotSDK::Scheduler::ExternalCalendarMeetingEventResponseProperties::HsEngagementSource::TaggedSymbol
            )
          ADS =
            T.let(
              :ADS,
              HubSpotSDK::Scheduler::ExternalCalendarMeetingEventResponseProperties::HsEngagementSource::TaggedSymbol
            )
          AI_GROUP =
            T.let(
              :AI_GROUP,
              HubSpotSDK::Scheduler::ExternalCalendarMeetingEventResponseProperties::HsEngagementSource::TaggedSymbol
            )
          ANALYTICS =
            T.let(
              :ANALYTICS,
              HubSpotSDK::Scheduler::ExternalCalendarMeetingEventResponseProperties::HsEngagementSource::TaggedSymbol
            )
          API =
            T.let(
              :API,
              HubSpotSDK::Scheduler::ExternalCalendarMeetingEventResponseProperties::HsEngagementSource::TaggedSymbol
            )
          APPROVALS =
            T.let(
              :APPROVALS,
              HubSpotSDK::Scheduler::ExternalCalendarMeetingEventResponseProperties::HsEngagementSource::TaggedSymbol
            )
          ASSISTS =
            T.let(
              :ASSISTS,
              HubSpotSDK::Scheduler::ExternalCalendarMeetingEventResponseProperties::HsEngagementSource::TaggedSymbol
            )
          ASSOCIATIONS =
            T.let(
              :ASSOCIATIONS,
              HubSpotSDK::Scheduler::ExternalCalendarMeetingEventResponseProperties::HsEngagementSource::TaggedSymbol
            )
          AUTO_ASSOCIATE_BY_DOMAIN =
            T.let(
              :AUTO_ASSOCIATE_BY_DOMAIN,
              HubSpotSDK::Scheduler::ExternalCalendarMeetingEventResponseProperties::HsEngagementSource::TaggedSymbol
            )
          AUTOMATION_JOURNEY =
            T.let(
              :AUTOMATION_JOURNEY,
              HubSpotSDK::Scheduler::ExternalCalendarMeetingEventResponseProperties::HsEngagementSource::TaggedSymbol
            )
          AUTOMATION_PLATFORM =
            T.let(
              :AUTOMATION_PLATFORM,
              HubSpotSDK::Scheduler::ExternalCalendarMeetingEventResponseProperties::HsEngagementSource::TaggedSymbol
            )
          AVATARS_SERVICE =
            T.let(
              :AVATARS_SERVICE,
              HubSpotSDK::Scheduler::ExternalCalendarMeetingEventResponseProperties::HsEngagementSource::TaggedSymbol
            )
          BATCH_UPDATE =
            T.let(
              :BATCH_UPDATE,
              HubSpotSDK::Scheduler::ExternalCalendarMeetingEventResponseProperties::HsEngagementSource::TaggedSymbol
            )
          BCC_TO_CRM =
            T.let(
              :BCC_TO_CRM,
              HubSpotSDK::Scheduler::ExternalCalendarMeetingEventResponseProperties::HsEngagementSource::TaggedSymbol
            )
          BEHAVIORAL_EVENTS =
            T.let(
              :BEHAVIORAL_EVENTS,
              HubSpotSDK::Scheduler::ExternalCalendarMeetingEventResponseProperties::HsEngagementSource::TaggedSymbol
            )
          BET_ASSIGNMENT =
            T.let(
              :BET_ASSIGNMENT,
              HubSpotSDK::Scheduler::ExternalCalendarMeetingEventResponseProperties::HsEngagementSource::TaggedSymbol
            )
          BET_CRM_CONNECTOR =
            T.let(
              :BET_CRM_CONNECTOR,
              HubSpotSDK::Scheduler::ExternalCalendarMeetingEventResponseProperties::HsEngagementSource::TaggedSymbol
            )
          BIDEN =
            T.let(
              :BIDEN,
              HubSpotSDK::Scheduler::ExternalCalendarMeetingEventResponseProperties::HsEngagementSource::TaggedSymbol
            )
          BILLING =
            T.let(
              :BILLING,
              HubSpotSDK::Scheduler::ExternalCalendarMeetingEventResponseProperties::HsEngagementSource::TaggedSymbol
            )
          BOT =
            T.let(
              :BOT,
              HubSpotSDK::Scheduler::ExternalCalendarMeetingEventResponseProperties::HsEngagementSource::TaggedSymbol
            )
          CALCULATED =
            T.let(
              :CALCULATED,
              HubSpotSDK::Scheduler::ExternalCalendarMeetingEventResponseProperties::HsEngagementSource::TaggedSymbol
            )
          CENTRAL_EXCHANGE_RATES =
            T.let(
              :CENTRAL_EXCHANGE_RATES,
              HubSpotSDK::Scheduler::ExternalCalendarMeetingEventResponseProperties::HsEngagementSource::TaggedSymbol
            )
          CHATSPOT =
            T.let(
              :CHATSPOT,
              HubSpotSDK::Scheduler::ExternalCalendarMeetingEventResponseProperties::HsEngagementSource::TaggedSymbol
            )
          CLONE_OBJECTS =
            T.let(
              :CLONE_OBJECTS,
              HubSpotSDK::Scheduler::ExternalCalendarMeetingEventResponseProperties::HsEngagementSource::TaggedSymbol
            )
          COMMUNICATOR =
            T.let(
              :COMMUNICATOR,
              HubSpotSDK::Scheduler::ExternalCalendarMeetingEventResponseProperties::HsEngagementSource::TaggedSymbol
            )
          COMPANIES =
            T.let(
              :COMPANIES,
              HubSpotSDK::Scheduler::ExternalCalendarMeetingEventResponseProperties::HsEngagementSource::TaggedSymbol
            )
          COMPANY_FAMILIES =
            T.let(
              :COMPANY_FAMILIES,
              HubSpotSDK::Scheduler::ExternalCalendarMeetingEventResponseProperties::HsEngagementSource::TaggedSymbol
            )
          COMPANY_INSIGHTS =
            T.let(
              :COMPANY_INSIGHTS,
              HubSpotSDK::Scheduler::ExternalCalendarMeetingEventResponseProperties::HsEngagementSource::TaggedSymbol
            )
          CONTACTS =
            T.let(
              :CONTACTS,
              HubSpotSDK::Scheduler::ExternalCalendarMeetingEventResponseProperties::HsEngagementSource::TaggedSymbol
            )
          CONTACTS_WEB =
            T.let(
              :CONTACTS_WEB,
              HubSpotSDK::Scheduler::ExternalCalendarMeetingEventResponseProperties::HsEngagementSource::TaggedSymbol
            )
          CONTENT_MEMBERSHIP =
            T.let(
              :CONTENT_MEMBERSHIP,
              HubSpotSDK::Scheduler::ExternalCalendarMeetingEventResponseProperties::HsEngagementSource::TaggedSymbol
            )
          CONVERSATIONAL_ENRICHMENT =
            T.let(
              :CONVERSATIONAL_ENRICHMENT,
              HubSpotSDK::Scheduler::ExternalCalendarMeetingEventResponseProperties::HsEngagementSource::TaggedSymbol
            )
          CONVERSATIONS =
            T.let(
              :CONVERSATIONS,
              HubSpotSDK::Scheduler::ExternalCalendarMeetingEventResponseProperties::HsEngagementSource::TaggedSymbol
            )
          CRM_PROCESSES_PLATFORM =
            T.let(
              :CRM_PROCESSES_PLATFORM,
              HubSpotSDK::Scheduler::ExternalCalendarMeetingEventResponseProperties::HsEngagementSource::TaggedSymbol
            )
          CRM_UI =
            T.let(
              :CRM_UI,
              HubSpotSDK::Scheduler::ExternalCalendarMeetingEventResponseProperties::HsEngagementSource::TaggedSymbol
            )
          CRM_UI_BULK_ACTION =
            T.let(
              :CRM_UI_BULK_ACTION,
              HubSpotSDK::Scheduler::ExternalCalendarMeetingEventResponseProperties::HsEngagementSource::TaggedSymbol
            )
          CUSTOMER_AGENT =
            T.let(
              :CUSTOMER_AGENT,
              HubSpotSDK::Scheduler::ExternalCalendarMeetingEventResponseProperties::HsEngagementSource::TaggedSymbol
            )
          DATA_ENRICHMENT =
            T.let(
              :DATA_ENRICHMENT,
              HubSpotSDK::Scheduler::ExternalCalendarMeetingEventResponseProperties::HsEngagementSource::TaggedSymbol
            )
          DATA_QUALITY =
            T.let(
              :DATA_QUALITY,
              HubSpotSDK::Scheduler::ExternalCalendarMeetingEventResponseProperties::HsEngagementSource::TaggedSymbol
            )
          DATASET =
            T.let(
              :DATASET,
              HubSpotSDK::Scheduler::ExternalCalendarMeetingEventResponseProperties::HsEngagementSource::TaggedSymbol
            )
          DEALS =
            T.let(
              :DEALS,
              HubSpotSDK::Scheduler::ExternalCalendarMeetingEventResponseProperties::HsEngagementSource::TaggedSymbol
            )
          DEFAULT =
            T.let(
              :DEFAULT,
              HubSpotSDK::Scheduler::ExternalCalendarMeetingEventResponseProperties::HsEngagementSource::TaggedSymbol
            )
          DELETE_OBJECTS =
            T.let(
              :DELETE_OBJECTS,
              HubSpotSDK::Scheduler::ExternalCalendarMeetingEventResponseProperties::HsEngagementSource::TaggedSymbol
            )
          EMAIL =
            T.let(
              :EMAIL,
              HubSpotSDK::Scheduler::ExternalCalendarMeetingEventResponseProperties::HsEngagementSource::TaggedSymbol
            )
          EMAIL_INBOX_IMPORT =
            T.let(
              :EMAIL_INBOX_IMPORT,
              HubSpotSDK::Scheduler::ExternalCalendarMeetingEventResponseProperties::HsEngagementSource::TaggedSymbol
            )
          EMAIL_INTEGRATION =
            T.let(
              :EMAIL_INTEGRATION,
              HubSpotSDK::Scheduler::ExternalCalendarMeetingEventResponseProperties::HsEngagementSource::TaggedSymbol
            )
          ENGAGEMENTS =
            T.let(
              :ENGAGEMENTS,
              HubSpotSDK::Scheduler::ExternalCalendarMeetingEventResponseProperties::HsEngagementSource::TaggedSymbol
            )
          EXTENSION =
            T.let(
              :EXTENSION,
              HubSpotSDK::Scheduler::ExternalCalendarMeetingEventResponseProperties::HsEngagementSource::TaggedSymbol
            )
          FILE_MANAGER =
            T.let(
              :FILE_MANAGER,
              HubSpotSDK::Scheduler::ExternalCalendarMeetingEventResponseProperties::HsEngagementSource::TaggedSymbol
            )
          FLYWHEEL_PRODUCT_DATA_SYNC =
            T.let(
              :FLYWHEEL_PRODUCT_DATA_SYNC,
              HubSpotSDK::Scheduler::ExternalCalendarMeetingEventResponseProperties::HsEngagementSource::TaggedSymbol
            )
          FORECASTING =
            T.let(
              :FORECASTING,
              HubSpotSDK::Scheduler::ExternalCalendarMeetingEventResponseProperties::HsEngagementSource::TaggedSymbol
            )
          FORM =
            T.let(
              :FORM,
              HubSpotSDK::Scheduler::ExternalCalendarMeetingEventResponseProperties::HsEngagementSource::TaggedSymbol
            )
          FORWARD_TO_CRM =
            T.let(
              :FORWARD_TO_CRM,
              HubSpotSDK::Scheduler::ExternalCalendarMeetingEventResponseProperties::HsEngagementSource::TaggedSymbol
            )
          GMAIL_INTEGRATION =
            T.let(
              :GMAIL_INTEGRATION,
              HubSpotSDK::Scheduler::ExternalCalendarMeetingEventResponseProperties::HsEngagementSource::TaggedSymbol
            )
          GOALS =
            T.let(
              :GOALS,
              HubSpotSDK::Scheduler::ExternalCalendarMeetingEventResponseProperties::HsEngagementSource::TaggedSymbol
            )
          HEISENBERG =
            T.let(
              :HEISENBERG,
              HubSpotSDK::Scheduler::ExternalCalendarMeetingEventResponseProperties::HsEngagementSource::TaggedSymbol
            )
          HELP_DESK =
            T.let(
              :HELP_DESK,
              HubSpotSDK::Scheduler::ExternalCalendarMeetingEventResponseProperties::HsEngagementSource::TaggedSymbol
            )
          HELP_DESK_AI =
            T.let(
              :HELP_DESK_AI,
              HubSpotSDK::Scheduler::ExternalCalendarMeetingEventResponseProperties::HsEngagementSource::TaggedSymbol
            )
          IMPORT =
            T.let(
              :IMPORT,
              HubSpotSDK::Scheduler::ExternalCalendarMeetingEventResponseProperties::HsEngagementSource::TaggedSymbol
            )
          INTEGRATION =
            T.let(
              :INTEGRATION,
              HubSpotSDK::Scheduler::ExternalCalendarMeetingEventResponseProperties::HsEngagementSource::TaggedSymbol
            )
          INTEGRATIONS_PLATFORM =
            T.let(
              :INTEGRATIONS_PLATFORM,
              HubSpotSDK::Scheduler::ExternalCalendarMeetingEventResponseProperties::HsEngagementSource::TaggedSymbol
            )
          INTEGRATIONS_SYNC =
            T.let(
              :INTEGRATIONS_SYNC,
              HubSpotSDK::Scheduler::ExternalCalendarMeetingEventResponseProperties::HsEngagementSource::TaggedSymbol
            )
          INTENT =
            T.let(
              :INTENT,
              HubSpotSDK::Scheduler::ExternalCalendarMeetingEventResponseProperties::HsEngagementSource::TaggedSymbol
            )
          INTERNAL_PROCESSING =
            T.let(
              :INTERNAL_PROCESSING,
              HubSpotSDK::Scheduler::ExternalCalendarMeetingEventResponseProperties::HsEngagementSource::TaggedSymbol
            )
          LEADIN =
            T.let(
              :LEADIN,
              HubSpotSDK::Scheduler::ExternalCalendarMeetingEventResponseProperties::HsEngagementSource::TaggedSymbol
            )
          LEGAL_BASIS_REMEDIATION =
            T.let(
              :LEGAL_BASIS_REMEDIATION,
              HubSpotSDK::Scheduler::ExternalCalendarMeetingEventResponseProperties::HsEngagementSource::TaggedSymbol
            )
          MARKET_SOURCING =
            T.let(
              :MARKET_SOURCING,
              HubSpotSDK::Scheduler::ExternalCalendarMeetingEventResponseProperties::HsEngagementSource::TaggedSymbol
            )
          MARKETPLACE =
            T.let(
              :MARKETPLACE,
              HubSpotSDK::Scheduler::ExternalCalendarMeetingEventResponseProperties::HsEngagementSource::TaggedSymbol
            )
          MARKETS =
            T.let(
              :MARKETS,
              HubSpotSDK::Scheduler::ExternalCalendarMeetingEventResponseProperties::HsEngagementSource::TaggedSymbol
            )
          MEETINGS =
            T.let(
              :MEETINGS,
              HubSpotSDK::Scheduler::ExternalCalendarMeetingEventResponseProperties::HsEngagementSource::TaggedSymbol
            )
          MERGE_COMPANIES =
            T.let(
              :MERGE_COMPANIES,
              HubSpotSDK::Scheduler::ExternalCalendarMeetingEventResponseProperties::HsEngagementSource::TaggedSymbol
            )
          MERGE_CONTACTS =
            T.let(
              :MERGE_CONTACTS,
              HubSpotSDK::Scheduler::ExternalCalendarMeetingEventResponseProperties::HsEngagementSource::TaggedSymbol
            )
          MERGE_OBJECTS =
            T.let(
              :MERGE_OBJECTS,
              HubSpotSDK::Scheduler::ExternalCalendarMeetingEventResponseProperties::HsEngagementSource::TaggedSymbol
            )
          MERGE_REVERT_OBJECTS =
            T.let(
              :MERGE_REVERT_OBJECTS,
              HubSpotSDK::Scheduler::ExternalCalendarMeetingEventResponseProperties::HsEngagementSource::TaggedSymbol
            )
          MICROAPPS =
            T.let(
              :MICROAPPS,
              HubSpotSDK::Scheduler::ExternalCalendarMeetingEventResponseProperties::HsEngagementSource::TaggedSymbol
            )
          MIGRATION =
            T.let(
              :MIGRATION,
              HubSpotSDK::Scheduler::ExternalCalendarMeetingEventResponseProperties::HsEngagementSource::TaggedSymbol
            )
          MOBILE_ANDROID =
            T.let(
              :MOBILE_ANDROID,
              HubSpotSDK::Scheduler::ExternalCalendarMeetingEventResponseProperties::HsEngagementSource::TaggedSymbol
            )
          MOBILE_IOS =
            T.let(
              :MOBILE_IOS,
              HubSpotSDK::Scheduler::ExternalCalendarMeetingEventResponseProperties::HsEngagementSource::TaggedSymbol
            )
          PAYMENTS =
            T.let(
              :PAYMENTS,
              HubSpotSDK::Scheduler::ExternalCalendarMeetingEventResponseProperties::HsEngagementSource::TaggedSymbol
            )
          PIPELINE_SETTINGS =
            T.let(
              :PIPELINE_SETTINGS,
              HubSpotSDK::Scheduler::ExternalCalendarMeetingEventResponseProperties::HsEngagementSource::TaggedSymbol
            )
          PLAYBOOKS =
            T.let(
              :PLAYBOOKS,
              HubSpotSDK::Scheduler::ExternalCalendarMeetingEventResponseProperties::HsEngagementSource::TaggedSymbol
            )
          PORTAL_OBJECT_SYNC =
            T.let(
              :PORTAL_OBJECT_SYNC,
              HubSpotSDK::Scheduler::ExternalCalendarMeetingEventResponseProperties::HsEngagementSource::TaggedSymbol
            )
          PORTAL_USER_ASSOCIATOR =
            T.let(
              :PORTAL_USER_ASSOCIATOR,
              HubSpotSDK::Scheduler::ExternalCalendarMeetingEventResponseProperties::HsEngagementSource::TaggedSymbol
            )
          PRESENTATIONS =
            T.let(
              :PRESENTATIONS,
              HubSpotSDK::Scheduler::ExternalCalendarMeetingEventResponseProperties::HsEngagementSource::TaggedSymbol
            )
          PRIMARY_AUTOMATION =
            T.let(
              :PRIMARY_AUTOMATION,
              HubSpotSDK::Scheduler::ExternalCalendarMeetingEventResponseProperties::HsEngagementSource::TaggedSymbol
            )
          PROPERTY_DEFAULT_VALUE =
            T.let(
              :PROPERTY_DEFAULT_VALUE,
              HubSpotSDK::Scheduler::ExternalCalendarMeetingEventResponseProperties::HsEngagementSource::TaggedSymbol
            )
          PROPERTY_RESTORE =
            T.let(
              :PROPERTY_RESTORE,
              HubSpotSDK::Scheduler::ExternalCalendarMeetingEventResponseProperties::HsEngagementSource::TaggedSymbol
            )
          PROPERTY_SETTINGS =
            T.let(
              :PROPERTY_SETTINGS,
              HubSpotSDK::Scheduler::ExternalCalendarMeetingEventResponseProperties::HsEngagementSource::TaggedSymbol
            )
          PROSPECTING_AGENT =
            T.let(
              :PROSPECTING_AGENT,
              HubSpotSDK::Scheduler::ExternalCalendarMeetingEventResponseProperties::HsEngagementSource::TaggedSymbol
            )
          QUOTAS =
            T.let(
              :QUOTAS,
              HubSpotSDK::Scheduler::ExternalCalendarMeetingEventResponseProperties::HsEngagementSource::TaggedSymbol
            )
          QUOTES =
            T.let(
              :QUOTES,
              HubSpotSDK::Scheduler::ExternalCalendarMeetingEventResponseProperties::HsEngagementSource::TaggedSymbol
            )
          RECYCLING_BIN =
            T.let(
              :RECYCLING_BIN,
              HubSpotSDK::Scheduler::ExternalCalendarMeetingEventResponseProperties::HsEngagementSource::TaggedSymbol
            )
          RESTORE_OBJECTS =
            T.let(
              :RESTORE_OBJECTS,
              HubSpotSDK::Scheduler::ExternalCalendarMeetingEventResponseProperties::HsEngagementSource::TaggedSymbol
            )
          REVENUE_PLATFORM =
            T.let(
              :REVENUE_PLATFORM,
              HubSpotSDK::Scheduler::ExternalCalendarMeetingEventResponseProperties::HsEngagementSource::TaggedSymbol
            )
          SALES =
            T.let(
              :SALES,
              HubSpotSDK::Scheduler::ExternalCalendarMeetingEventResponseProperties::HsEngagementSource::TaggedSymbol
            )
          SALES_MESSAGES =
            T.let(
              :SALES_MESSAGES,
              HubSpotSDK::Scheduler::ExternalCalendarMeetingEventResponseProperties::HsEngagementSource::TaggedSymbol
            )
          SALESFORCE =
            T.let(
              :SALESFORCE,
              HubSpotSDK::Scheduler::ExternalCalendarMeetingEventResponseProperties::HsEngagementSource::TaggedSymbol
            )
          SEQUENCES =
            T.let(
              :SEQUENCES,
              HubSpotSDK::Scheduler::ExternalCalendarMeetingEventResponseProperties::HsEngagementSource::TaggedSymbol
            )
          SETTINGS =
            T.let(
              :SETTINGS,
              HubSpotSDK::Scheduler::ExternalCalendarMeetingEventResponseProperties::HsEngagementSource::TaggedSymbol
            )
          SIDEKICK =
            T.let(
              :SIDEKICK,
              HubSpotSDK::Scheduler::ExternalCalendarMeetingEventResponseProperties::HsEngagementSource::TaggedSymbol
            )
          SIGNALS =
            T.let(
              :SIGNALS,
              HubSpotSDK::Scheduler::ExternalCalendarMeetingEventResponseProperties::HsEngagementSource::TaggedSymbol
            )
          SLACK_INTEGRATION =
            T.let(
              :SLACK_INTEGRATION,
              HubSpotSDK::Scheduler::ExternalCalendarMeetingEventResponseProperties::HsEngagementSource::TaggedSymbol
            )
          SMART_DATA_CAPTURE =
            T.let(
              :SMART_DATA_CAPTURE,
              HubSpotSDK::Scheduler::ExternalCalendarMeetingEventResponseProperties::HsEngagementSource::TaggedSymbol
            )
          SOCIAL =
            T.let(
              :SOCIAL,
              HubSpotSDK::Scheduler::ExternalCalendarMeetingEventResponseProperties::HsEngagementSource::TaggedSymbol
            )
          SUCCESS =
            T.let(
              :SUCCESS,
              HubSpotSDK::Scheduler::ExternalCalendarMeetingEventResponseProperties::HsEngagementSource::TaggedSymbol
            )
          TALLY =
            T.let(
              :TALLY,
              HubSpotSDK::Scheduler::ExternalCalendarMeetingEventResponseProperties::HsEngagementSource::TaggedSymbol
            )
          TASK =
            T.let(
              :TASK,
              HubSpotSDK::Scheduler::ExternalCalendarMeetingEventResponseProperties::HsEngagementSource::TaggedSymbol
            )
          UNKNOWN =
            T.let(
              :UNKNOWN,
              HubSpotSDK::Scheduler::ExternalCalendarMeetingEventResponseProperties::HsEngagementSource::TaggedSymbol
            )
          WAL_INCREMENTAL =
            T.let(
              :WAL_INCREMENTAL,
              HubSpotSDK::Scheduler::ExternalCalendarMeetingEventResponseProperties::HsEngagementSource::TaggedSymbol
            )
          WORK_UI =
            T.let(
              :WORK_UI,
              HubSpotSDK::Scheduler::ExternalCalendarMeetingEventResponseProperties::HsEngagementSource::TaggedSymbol
            )
          WORKFLOW_CONTACT_DELETE_ACTION =
            T.let(
              :WORKFLOW_CONTACT_DELETE_ACTION,
              HubSpotSDK::Scheduler::ExternalCalendarMeetingEventResponseProperties::HsEngagementSource::TaggedSymbol
            )
          WORKFLOWS =
            T.let(
              :WORKFLOWS,
              HubSpotSDK::Scheduler::ExternalCalendarMeetingEventResponseProperties::HsEngagementSource::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Scheduler::ExternalCalendarMeetingEventResponseProperties::HsEngagementSource::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # The type of location for the meeting. Acceptable values are: ADDRESS, CUSTOM,
        # PHONE.
        module HsMeetingLocationType
          extend HubSpotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubSpotSDK::Scheduler::ExternalCalendarMeetingEventResponseProperties::HsMeetingLocationType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ADDRESS =
            T.let(
              :ADDRESS,
              HubSpotSDK::Scheduler::ExternalCalendarMeetingEventResponseProperties::HsMeetingLocationType::TaggedSymbol
            )
          CUSTOM =
            T.let(
              :CUSTOM,
              HubSpotSDK::Scheduler::ExternalCalendarMeetingEventResponseProperties::HsMeetingLocationType::TaggedSymbol
            )
          PHONE =
            T.let(
              :PHONE,
              HubSpotSDK::Scheduler::ExternalCalendarMeetingEventResponseProperties::HsMeetingLocationType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Scheduler::ExternalCalendarMeetingEventResponseProperties::HsMeetingLocationType::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
