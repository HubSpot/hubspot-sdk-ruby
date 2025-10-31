# typed: strong

module HubspotSDK
  module Models
    module Scheduler
      class ExternalCalendarMeetingEventResponseProperties < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Scheduler::ExternalCalendarMeetingEventResponseProperties,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig do
          returns(
            HubspotSDK::Scheduler::ExternalCalendarMeetingEventResponseProperties::HsEngagementSource::TaggedSymbol
          )
        end
        attr_accessor :hs_engagement_source

        sig { returns(String) }
        attr_accessor :hs_engagement_source_id

        sig { returns(Time) }
        attr_accessor :hs_meeting_end_time

        sig { returns(String) }
        attr_accessor :hs_meeting_outcome

        sig { returns(Time) }
        attr_accessor :hs_meeting_start_time

        sig { returns(String) }
        attr_accessor :hs_meeting_title

        sig { returns(Time) }
        attr_accessor :hs_timestamp

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

        sig { returns(T.nilable(String)) }
        attr_reader :hs_include_description_in_reminder

        sig { params(hs_include_description_in_reminder: String).void }
        attr_writer :hs_include_description_in_reminder

        sig { returns(T.nilable(String)) }
        attr_reader :hs_internal_meeting_notes

        sig { params(hs_internal_meeting_notes: String).void }
        attr_writer :hs_internal_meeting_notes

        sig { returns(T.nilable(String)) }
        attr_reader :hs_meeting_body

        sig { params(hs_meeting_body: String).void }
        attr_writer :hs_meeting_body

        sig { returns(T.nilable(String)) }
        attr_reader :hs_meeting_external_url

        sig { params(hs_meeting_external_url: String).void }
        attr_writer :hs_meeting_external_url

        sig { returns(T.nilable(String)) }
        attr_reader :hs_meeting_location

        sig { params(hs_meeting_location: String).void }
        attr_writer :hs_meeting_location

        sig do
          returns(
            T.nilable(
              HubspotSDK::Scheduler::ExternalCalendarMeetingEventResponseProperties::HsMeetingLocationType::TaggedSymbol
            )
          )
        end
        attr_reader :hs_meeting_location_type

        sig do
          params(
            hs_meeting_location_type:
              HubspotSDK::Scheduler::ExternalCalendarMeetingEventResponseProperties::HsMeetingLocationType::OrSymbol
          ).void
        end
        attr_writer :hs_meeting_location_type

        sig { returns(T.nilable(String)) }
        attr_reader :hs_unique_id

        sig { params(hs_unique_id: String).void }
        attr_writer :hs_unique_id

        sig { returns(T.nilable(String)) }
        attr_reader :hubspot_owner_id

        sig { params(hubspot_owner_id: String).void }
        attr_writer :hubspot_owner_id

        sig do
          params(
            hs_engagement_source:
              HubspotSDK::Scheduler::ExternalCalendarMeetingEventResponseProperties::HsEngagementSource::OrSymbol,
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
              HubspotSDK::Scheduler::ExternalCalendarMeetingEventResponseProperties::HsMeetingLocationType::OrSymbol,
            hs_unique_id: String,
            hubspot_owner_id: String
          ).returns(T.attached_class)
        end
        def self.new(
          hs_engagement_source:,
          hs_engagement_source_id:,
          hs_meeting_end_time:,
          hs_meeting_outcome:,
          hs_meeting_start_time:,
          hs_meeting_title:,
          hs_timestamp:,
          hs_activity_type: nil,
          hs_attachment_ids: nil,
          hs_attendee_owner_ids: nil,
          hs_include_description_in_reminder: nil,
          hs_internal_meeting_notes: nil,
          hs_meeting_body: nil,
          hs_meeting_external_url: nil,
          hs_meeting_location: nil,
          hs_meeting_location_type: nil,
          hs_unique_id: nil,
          hubspot_owner_id: nil
        )
        end

        sig do
          override.returns(
            {
              hs_engagement_source:
                HubspotSDK::Scheduler::ExternalCalendarMeetingEventResponseProperties::HsEngagementSource::TaggedSymbol,
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
                HubspotSDK::Scheduler::ExternalCalendarMeetingEventResponseProperties::HsMeetingLocationType::TaggedSymbol,
              hs_unique_id: String,
              hubspot_owner_id: String
            }
          )
        end
        def to_hash
        end

        module HsEngagementSource
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubspotSDK::Scheduler::ExternalCalendarMeetingEventResponseProperties::HsEngagementSource
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          UNKNOWN =
            T.let(
              :UNKNOWN,
              HubspotSDK::Scheduler::ExternalCalendarMeetingEventResponseProperties::HsEngagementSource::TaggedSymbol
            )
          IMPORT =
            T.let(
              :IMPORT,
              HubspotSDK::Scheduler::ExternalCalendarMeetingEventResponseProperties::HsEngagementSource::TaggedSymbol
            )
          API =
            T.let(
              :API,
              HubspotSDK::Scheduler::ExternalCalendarMeetingEventResponseProperties::HsEngagementSource::TaggedSymbol
            )
          FORM =
            T.let(
              :FORM,
              HubspotSDK::Scheduler::ExternalCalendarMeetingEventResponseProperties::HsEngagementSource::TaggedSymbol
            )
          ANALYTICS =
            T.let(
              :ANALYTICS,
              HubspotSDK::Scheduler::ExternalCalendarMeetingEventResponseProperties::HsEngagementSource::TaggedSymbol
            )
          MIGRATION =
            T.let(
              :MIGRATION,
              HubspotSDK::Scheduler::ExternalCalendarMeetingEventResponseProperties::HsEngagementSource::TaggedSymbol
            )
          SALESFORCE =
            T.let(
              :SALESFORCE,
              HubspotSDK::Scheduler::ExternalCalendarMeetingEventResponseProperties::HsEngagementSource::TaggedSymbol
            )
          INTEGRATION =
            T.let(
              :INTEGRATION,
              HubspotSDK::Scheduler::ExternalCalendarMeetingEventResponseProperties::HsEngagementSource::TaggedSymbol
            )
          CONTACTS_WEB =
            T.let(
              :CONTACTS_WEB,
              HubspotSDK::Scheduler::ExternalCalendarMeetingEventResponseProperties::HsEngagementSource::TaggedSymbol
            )
          WAL_INCREMENTAL =
            T.let(
              :WAL_INCREMENTAL,
              HubspotSDK::Scheduler::ExternalCalendarMeetingEventResponseProperties::HsEngagementSource::TaggedSymbol
            )
          TASK =
            T.let(
              :TASK,
              HubspotSDK::Scheduler::ExternalCalendarMeetingEventResponseProperties::HsEngagementSource::TaggedSymbol
            )
          EMAIL =
            T.let(
              :EMAIL,
              HubspotSDK::Scheduler::ExternalCalendarMeetingEventResponseProperties::HsEngagementSource::TaggedSymbol
            )
          WORKFLOWS =
            T.let(
              :WORKFLOWS,
              HubspotSDK::Scheduler::ExternalCalendarMeetingEventResponseProperties::HsEngagementSource::TaggedSymbol
            )
          CALCULATED =
            T.let(
              :CALCULATED,
              HubspotSDK::Scheduler::ExternalCalendarMeetingEventResponseProperties::HsEngagementSource::TaggedSymbol
            )
          SOCIAL =
            T.let(
              :SOCIAL,
              HubspotSDK::Scheduler::ExternalCalendarMeetingEventResponseProperties::HsEngagementSource::TaggedSymbol
            )
          BATCH_UPDATE =
            T.let(
              :BATCH_UPDATE,
              HubspotSDK::Scheduler::ExternalCalendarMeetingEventResponseProperties::HsEngagementSource::TaggedSymbol
            )
          SIGNALS =
            T.let(
              :SIGNALS,
              HubspotSDK::Scheduler::ExternalCalendarMeetingEventResponseProperties::HsEngagementSource::TaggedSymbol
            )
          BIDEN =
            T.let(
              :BIDEN,
              HubspotSDK::Scheduler::ExternalCalendarMeetingEventResponseProperties::HsEngagementSource::TaggedSymbol
            )
          DEFAULT =
            T.let(
              :DEFAULT,
              HubspotSDK::Scheduler::ExternalCalendarMeetingEventResponseProperties::HsEngagementSource::TaggedSymbol
            )
          COMPANIES =
            T.let(
              :COMPANIES,
              HubspotSDK::Scheduler::ExternalCalendarMeetingEventResponseProperties::HsEngagementSource::TaggedSymbol
            )
          DEALS =
            T.let(
              :DEALS,
              HubspotSDK::Scheduler::ExternalCalendarMeetingEventResponseProperties::HsEngagementSource::TaggedSymbol
            )
          ASSISTS =
            T.let(
              :ASSISTS,
              HubspotSDK::Scheduler::ExternalCalendarMeetingEventResponseProperties::HsEngagementSource::TaggedSymbol
            )
          PRESENTATIONS =
            T.let(
              :PRESENTATIONS,
              HubspotSDK::Scheduler::ExternalCalendarMeetingEventResponseProperties::HsEngagementSource::TaggedSymbol
            )
          TALLY =
            T.let(
              :TALLY,
              HubspotSDK::Scheduler::ExternalCalendarMeetingEventResponseProperties::HsEngagementSource::TaggedSymbol
            )
          SIDEKICK =
            T.let(
              :SIDEKICK,
              HubspotSDK::Scheduler::ExternalCalendarMeetingEventResponseProperties::HsEngagementSource::TaggedSymbol
            )
          CRM_UI =
            T.let(
              :CRM_UI,
              HubspotSDK::Scheduler::ExternalCalendarMeetingEventResponseProperties::HsEngagementSource::TaggedSymbol
            )
          MERGE_CONTACTS =
            T.let(
              :MERGE_CONTACTS,
              HubspotSDK::Scheduler::ExternalCalendarMeetingEventResponseProperties::HsEngagementSource::TaggedSymbol
            )
          PORTAL_USER_ASSOCIATOR =
            T.let(
              :PORTAL_USER_ASSOCIATOR,
              HubspotSDK::Scheduler::ExternalCalendarMeetingEventResponseProperties::HsEngagementSource::TaggedSymbol
            )
          INTEGRATIONS_PLATFORM =
            T.let(
              :INTEGRATIONS_PLATFORM,
              HubspotSDK::Scheduler::ExternalCalendarMeetingEventResponseProperties::HsEngagementSource::TaggedSymbol
            )
          BCC_TO_CRM =
            T.let(
              :BCC_TO_CRM,
              HubspotSDK::Scheduler::ExternalCalendarMeetingEventResponseProperties::HsEngagementSource::TaggedSymbol
            )
          FORWARD_TO_CRM =
            T.let(
              :FORWARD_TO_CRM,
              HubspotSDK::Scheduler::ExternalCalendarMeetingEventResponseProperties::HsEngagementSource::TaggedSymbol
            )
          ENGAGEMENTS =
            T.let(
              :ENGAGEMENTS,
              HubspotSDK::Scheduler::ExternalCalendarMeetingEventResponseProperties::HsEngagementSource::TaggedSymbol
            )
          SALES =
            T.let(
              :SALES,
              HubspotSDK::Scheduler::ExternalCalendarMeetingEventResponseProperties::HsEngagementSource::TaggedSymbol
            )
          HEISENBERG =
            T.let(
              :HEISENBERG,
              HubspotSDK::Scheduler::ExternalCalendarMeetingEventResponseProperties::HsEngagementSource::TaggedSymbol
            )
          LEADIN =
            T.let(
              :LEADIN,
              HubspotSDK::Scheduler::ExternalCalendarMeetingEventResponseProperties::HsEngagementSource::TaggedSymbol
            )
          GMAIL_INTEGRATION =
            T.let(
              :GMAIL_INTEGRATION,
              HubspotSDK::Scheduler::ExternalCalendarMeetingEventResponseProperties::HsEngagementSource::TaggedSymbol
            )
          ACADEMY =
            T.let(
              :ACADEMY,
              HubspotSDK::Scheduler::ExternalCalendarMeetingEventResponseProperties::HsEngagementSource::TaggedSymbol
            )
          SALES_MESSAGES =
            T.let(
              :SALES_MESSAGES,
              HubspotSDK::Scheduler::ExternalCalendarMeetingEventResponseProperties::HsEngagementSource::TaggedSymbol
            )
          AVATARS_SERVICE =
            T.let(
              :AVATARS_SERVICE,
              HubspotSDK::Scheduler::ExternalCalendarMeetingEventResponseProperties::HsEngagementSource::TaggedSymbol
            )
          MERGE_COMPANIES =
            T.let(
              :MERGE_COMPANIES,
              HubspotSDK::Scheduler::ExternalCalendarMeetingEventResponseProperties::HsEngagementSource::TaggedSymbol
            )
          SEQUENCES =
            T.let(
              :SEQUENCES,
              HubspotSDK::Scheduler::ExternalCalendarMeetingEventResponseProperties::HsEngagementSource::TaggedSymbol
            )
          COMPANY_FAMILIES =
            T.let(
              :COMPANY_FAMILIES,
              HubspotSDK::Scheduler::ExternalCalendarMeetingEventResponseProperties::HsEngagementSource::TaggedSymbol
            )
          MOBILE_IOS =
            T.let(
              :MOBILE_IOS,
              HubspotSDK::Scheduler::ExternalCalendarMeetingEventResponseProperties::HsEngagementSource::TaggedSymbol
            )
          MOBILE_ANDROID =
            T.let(
              :MOBILE_ANDROID,
              HubspotSDK::Scheduler::ExternalCalendarMeetingEventResponseProperties::HsEngagementSource::TaggedSymbol
            )
          CONTACTS =
            T.let(
              :CONTACTS,
              HubspotSDK::Scheduler::ExternalCalendarMeetingEventResponseProperties::HsEngagementSource::TaggedSymbol
            )
          ASSOCIATIONS =
            T.let(
              :ASSOCIATIONS,
              HubspotSDK::Scheduler::ExternalCalendarMeetingEventResponseProperties::HsEngagementSource::TaggedSymbol
            )
          EXTENSION =
            T.let(
              :EXTENSION,
              HubspotSDK::Scheduler::ExternalCalendarMeetingEventResponseProperties::HsEngagementSource::TaggedSymbol
            )
          SUCCESS =
            T.let(
              :SUCCESS,
              HubspotSDK::Scheduler::ExternalCalendarMeetingEventResponseProperties::HsEngagementSource::TaggedSymbol
            )
          BOT =
            T.let(
              :BOT,
              HubspotSDK::Scheduler::ExternalCalendarMeetingEventResponseProperties::HsEngagementSource::TaggedSymbol
            )
          INTEGRATIONS_SYNC =
            T.let(
              :INTEGRATIONS_SYNC,
              HubspotSDK::Scheduler::ExternalCalendarMeetingEventResponseProperties::HsEngagementSource::TaggedSymbol
            )
          AUTOMATION_PLATFORM =
            T.let(
              :AUTOMATION_PLATFORM,
              HubspotSDK::Scheduler::ExternalCalendarMeetingEventResponseProperties::HsEngagementSource::TaggedSymbol
            )
          CONVERSATIONS =
            T.let(
              :CONVERSATIONS,
              HubspotSDK::Scheduler::ExternalCalendarMeetingEventResponseProperties::HsEngagementSource::TaggedSymbol
            )
          EMAIL_INTEGRATION =
            T.let(
              :EMAIL_INTEGRATION,
              HubspotSDK::Scheduler::ExternalCalendarMeetingEventResponseProperties::HsEngagementSource::TaggedSymbol
            )
          CONTENT_MEMBERSHIP =
            T.let(
              :CONTENT_MEMBERSHIP,
              HubspotSDK::Scheduler::ExternalCalendarMeetingEventResponseProperties::HsEngagementSource::TaggedSymbol
            )
          QUOTES =
            T.let(
              :QUOTES,
              HubspotSDK::Scheduler::ExternalCalendarMeetingEventResponseProperties::HsEngagementSource::TaggedSymbol
            )
          BET_ASSIGNMENT =
            T.let(
              :BET_ASSIGNMENT,
              HubspotSDK::Scheduler::ExternalCalendarMeetingEventResponseProperties::HsEngagementSource::TaggedSymbol
            )
          QUOTAS =
            T.let(
              :QUOTAS,
              HubspotSDK::Scheduler::ExternalCalendarMeetingEventResponseProperties::HsEngagementSource::TaggedSymbol
            )
          BET_CRM_CONNECTOR =
            T.let(
              :BET_CRM_CONNECTOR,
              HubspotSDK::Scheduler::ExternalCalendarMeetingEventResponseProperties::HsEngagementSource::TaggedSymbol
            )
          MEETINGS =
            T.let(
              :MEETINGS,
              HubspotSDK::Scheduler::ExternalCalendarMeetingEventResponseProperties::HsEngagementSource::TaggedSymbol
            )
          MERGE_OBJECTS =
            T.let(
              :MERGE_OBJECTS,
              HubspotSDK::Scheduler::ExternalCalendarMeetingEventResponseProperties::HsEngagementSource::TaggedSymbol
            )
          RECYCLING_BIN =
            T.let(
              :RECYCLING_BIN,
              HubspotSDK::Scheduler::ExternalCalendarMeetingEventResponseProperties::HsEngagementSource::TaggedSymbol
            )
          ADS =
            T.let(
              :ADS,
              HubspotSDK::Scheduler::ExternalCalendarMeetingEventResponseProperties::HsEngagementSource::TaggedSymbol
            )
          AI_GROUP =
            T.let(
              :AI_GROUP,
              HubspotSDK::Scheduler::ExternalCalendarMeetingEventResponseProperties::HsEngagementSource::TaggedSymbol
            )
          COMMUNICATOR =
            T.let(
              :COMMUNICATOR,
              HubspotSDK::Scheduler::ExternalCalendarMeetingEventResponseProperties::HsEngagementSource::TaggedSymbol
            )
          SETTINGS =
            T.let(
              :SETTINGS,
              HubspotSDK::Scheduler::ExternalCalendarMeetingEventResponseProperties::HsEngagementSource::TaggedSymbol
            )
          PROPERTY_SETTINGS =
            T.let(
              :PROPERTY_SETTINGS,
              HubspotSDK::Scheduler::ExternalCalendarMeetingEventResponseProperties::HsEngagementSource::TaggedSymbol
            )
          PIPELINE_SETTINGS =
            T.let(
              :PIPELINE_SETTINGS,
              HubspotSDK::Scheduler::ExternalCalendarMeetingEventResponseProperties::HsEngagementSource::TaggedSymbol
            )
          COMPANY_INSIGHTS =
            T.let(
              :COMPANY_INSIGHTS,
              HubspotSDK::Scheduler::ExternalCalendarMeetingEventResponseProperties::HsEngagementSource::TaggedSymbol
            )
          BEHAVIORAL_EVENTS =
            T.let(
              :BEHAVIORAL_EVENTS,
              HubspotSDK::Scheduler::ExternalCalendarMeetingEventResponseProperties::HsEngagementSource::TaggedSymbol
            )
          PAYMENTS =
            T.let(
              :PAYMENTS,
              HubspotSDK::Scheduler::ExternalCalendarMeetingEventResponseProperties::HsEngagementSource::TaggedSymbol
            )
          GOALS =
            T.let(
              :GOALS,
              HubspotSDK::Scheduler::ExternalCalendarMeetingEventResponseProperties::HsEngagementSource::TaggedSymbol
            )
          PORTAL_OBJECT_SYNC =
            T.let(
              :PORTAL_OBJECT_SYNC,
              HubspotSDK::Scheduler::ExternalCalendarMeetingEventResponseProperties::HsEngagementSource::TaggedSymbol
            )
          APPROVALS =
            T.let(
              :APPROVALS,
              HubspotSDK::Scheduler::ExternalCalendarMeetingEventResponseProperties::HsEngagementSource::TaggedSymbol
            )
          FILE_MANAGER =
            T.let(
              :FILE_MANAGER,
              HubspotSDK::Scheduler::ExternalCalendarMeetingEventResponseProperties::HsEngagementSource::TaggedSymbol
            )
          MARKETPLACE =
            T.let(
              :MARKETPLACE,
              HubspotSDK::Scheduler::ExternalCalendarMeetingEventResponseProperties::HsEngagementSource::TaggedSymbol
            )
          INTERNAL_PROCESSING =
            T.let(
              :INTERNAL_PROCESSING,
              HubspotSDK::Scheduler::ExternalCalendarMeetingEventResponseProperties::HsEngagementSource::TaggedSymbol
            )
          FORECASTING =
            T.let(
              :FORECASTING,
              HubspotSDK::Scheduler::ExternalCalendarMeetingEventResponseProperties::HsEngagementSource::TaggedSymbol
            )
          SLACK_INTEGRATION =
            T.let(
              :SLACK_INTEGRATION,
              HubspotSDK::Scheduler::ExternalCalendarMeetingEventResponseProperties::HsEngagementSource::TaggedSymbol
            )
          CRM_UI_BULK_ACTION =
            T.let(
              :CRM_UI_BULK_ACTION,
              HubspotSDK::Scheduler::ExternalCalendarMeetingEventResponseProperties::HsEngagementSource::TaggedSymbol
            )
          WORKFLOW_CONTACT_DELETE_ACTION =
            T.let(
              :WORKFLOW_CONTACT_DELETE_ACTION,
              HubspotSDK::Scheduler::ExternalCalendarMeetingEventResponseProperties::HsEngagementSource::TaggedSymbol
            )
          ACCEPTANCE_TEST =
            T.let(
              :ACCEPTANCE_TEST,
              HubspotSDK::Scheduler::ExternalCalendarMeetingEventResponseProperties::HsEngagementSource::TaggedSymbol
            )
          PLAYBOOKS =
            T.let(
              :PLAYBOOKS,
              HubspotSDK::Scheduler::ExternalCalendarMeetingEventResponseProperties::HsEngagementSource::TaggedSymbol
            )
          CHATSPOT =
            T.let(
              :CHATSPOT,
              HubspotSDK::Scheduler::ExternalCalendarMeetingEventResponseProperties::HsEngagementSource::TaggedSymbol
            )
          FLYWHEEL_PRODUCT_DATA_SYNC =
            T.let(
              :FLYWHEEL_PRODUCT_DATA_SYNC,
              HubspotSDK::Scheduler::ExternalCalendarMeetingEventResponseProperties::HsEngagementSource::TaggedSymbol
            )
          HELP_DESK =
            T.let(
              :HELP_DESK,
              HubspotSDK::Scheduler::ExternalCalendarMeetingEventResponseProperties::HsEngagementSource::TaggedSymbol
            )
          BILLING =
            T.let(
              :BILLING,
              HubspotSDK::Scheduler::ExternalCalendarMeetingEventResponseProperties::HsEngagementSource::TaggedSymbol
            )
          DATA_ENRICHMENT =
            T.let(
              :DATA_ENRICHMENT,
              HubspotSDK::Scheduler::ExternalCalendarMeetingEventResponseProperties::HsEngagementSource::TaggedSymbol
            )
          AUTOMATION_JOURNEY =
            T.let(
              :AUTOMATION_JOURNEY,
              HubspotSDK::Scheduler::ExternalCalendarMeetingEventResponseProperties::HsEngagementSource::TaggedSymbol
            )
          MICROAPPS =
            T.let(
              :MICROAPPS,
              HubspotSDK::Scheduler::ExternalCalendarMeetingEventResponseProperties::HsEngagementSource::TaggedSymbol
            )
          INTENT =
            T.let(
              :INTENT,
              HubspotSDK::Scheduler::ExternalCalendarMeetingEventResponseProperties::HsEngagementSource::TaggedSymbol
            )
          PROSPECTING_AGENT =
            T.let(
              :PROSPECTING_AGENT,
              HubspotSDK::Scheduler::ExternalCalendarMeetingEventResponseProperties::HsEngagementSource::TaggedSymbol
            )
          CENTRAL_EXCHANGE_RATES =
            T.let(
              :CENTRAL_EXCHANGE_RATES,
              HubspotSDK::Scheduler::ExternalCalendarMeetingEventResponseProperties::HsEngagementSource::TaggedSymbol
            )
          HELP_DESK_AI =
            T.let(
              :HELP_DESK_AI,
              HubspotSDK::Scheduler::ExternalCalendarMeetingEventResponseProperties::HsEngagementSource::TaggedSymbol
            )
          CONVERSATIONAL_ENRICHMENT =
            T.let(
              :CONVERSATIONAL_ENRICHMENT,
              HubspotSDK::Scheduler::ExternalCalendarMeetingEventResponseProperties::HsEngagementSource::TaggedSymbol
            )
          CRM_PROCESSES_PLATFORM =
            T.let(
              :CRM_PROCESSES_PLATFORM,
              HubspotSDK::Scheduler::ExternalCalendarMeetingEventResponseProperties::HsEngagementSource::TaggedSymbol
            )
          CLONE_OBJECTS =
            T.let(
              :CLONE_OBJECTS,
              HubspotSDK::Scheduler::ExternalCalendarMeetingEventResponseProperties::HsEngagementSource::TaggedSymbol
            )
          MARKET_SOURCING =
            T.let(
              :MARKET_SOURCING,
              HubspotSDK::Scheduler::ExternalCalendarMeetingEventResponseProperties::HsEngagementSource::TaggedSymbol
            )
          DATASET =
            T.let(
              :DATASET,
              HubspotSDK::Scheduler::ExternalCalendarMeetingEventResponseProperties::HsEngagementSource::TaggedSymbol
            )
          PROPERTY_RESTORE =
            T.let(
              :PROPERTY_RESTORE,
              HubspotSDK::Scheduler::ExternalCalendarMeetingEventResponseProperties::HsEngagementSource::TaggedSymbol
            )
          EMAIL_INBOX_IMPORT =
            T.let(
              :EMAIL_INBOX_IMPORT,
              HubspotSDK::Scheduler::ExternalCalendarMeetingEventResponseProperties::HsEngagementSource::TaggedSymbol
            )
          CUSTOMER_AGENT =
            T.let(
              :CUSTOMER_AGENT,
              HubspotSDK::Scheduler::ExternalCalendarMeetingEventResponseProperties::HsEngagementSource::TaggedSymbol
            )
          LEGAL_BASIS_REMEDIATION =
            T.let(
              :LEGAL_BASIS_REMEDIATION,
              HubspotSDK::Scheduler::ExternalCalendarMeetingEventResponseProperties::HsEngagementSource::TaggedSymbol
            )
          AUTO_ASSOCIATE_BY_DOMAIN =
            T.let(
              :AUTO_ASSOCIATE_BY_DOMAIN,
              HubspotSDK::Scheduler::ExternalCalendarMeetingEventResponseProperties::HsEngagementSource::TaggedSymbol
            )
          ACTIVITY_AUTO_ASSOCIATE =
            T.let(
              :ACTIVITY_AUTO_ASSOCIATE,
              HubspotSDK::Scheduler::ExternalCalendarMeetingEventResponseProperties::HsEngagementSource::TaggedSymbol
            )
          PRIMARY_AUTOMATION =
            T.let(
              :PRIMARY_AUTOMATION,
              HubspotSDK::Scheduler::ExternalCalendarMeetingEventResponseProperties::HsEngagementSource::TaggedSymbol
            )
          DELETE_OBJECTS =
            T.let(
              :DELETE_OBJECTS,
              HubspotSDK::Scheduler::ExternalCalendarMeetingEventResponseProperties::HsEngagementSource::TaggedSymbol
            )
          RESTORE_OBJECTS =
            T.let(
              :RESTORE_OBJECTS,
              HubspotSDK::Scheduler::ExternalCalendarMeetingEventResponseProperties::HsEngagementSource::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Scheduler::ExternalCalendarMeetingEventResponseProperties::HsEngagementSource::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        module HsMeetingLocationType
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubspotSDK::Scheduler::ExternalCalendarMeetingEventResponseProperties::HsMeetingLocationType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          PHONE =
            T.let(
              :PHONE,
              HubspotSDK::Scheduler::ExternalCalendarMeetingEventResponseProperties::HsMeetingLocationType::TaggedSymbol
            )
          ADDRESS =
            T.let(
              :ADDRESS,
              HubspotSDK::Scheduler::ExternalCalendarMeetingEventResponseProperties::HsMeetingLocationType::TaggedSymbol
            )
          CUSTOM =
            T.let(
              :CUSTOM,
              HubspotSDK::Scheduler::ExternalCalendarMeetingEventResponseProperties::HsMeetingLocationType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Scheduler::ExternalCalendarMeetingEventResponseProperties::HsMeetingLocationType::TaggedSymbol
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
