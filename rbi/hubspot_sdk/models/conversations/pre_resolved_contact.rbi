# typed: strong

module HubSpotSDK
  module Models
    module Conversations
      class PreResolvedContact < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Conversations::PreResolvedContact,
              HubSpotSDK::Internal::AnyHash
            )
          end

        sig do
          returns(
            T::Array[
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::OrSymbol
            ]
          )
        end
        attr_accessor :contact_properties_leading_to_match

        sig { returns(Integer) }
        attr_accessor :contact_vid

        sig do
          params(
            contact_properties_leading_to_match:
              T::Array[
                HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::OrSymbol
              ],
            contact_vid: Integer
          ).returns(T.attached_class)
        end
        def self.new(contact_properties_leading_to_match:, contact_vid:)
        end

        sig do
          override.returns(
            {
              contact_properties_leading_to_match:
                T::Array[
                  HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::OrSymbol
                ],
              contact_vid: Integer
            }
          )
        end
        def to_hash
        end

        module ContactPropertiesLeadingToMatch
          extend HubSpotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ADDRESS =
            T.let(
              :address,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          ANNUALREVENUE =
            T.let(
              :annualrevenue,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          ASSOCIATEDCOMPANYID =
            T.let(
              :associatedcompanyid,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          ASSOCIATEDCOMPANYLASTUPDATED =
            T.let(
              :associatedcompanylastupdated,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          CITY =
            T.let(
              :city,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          CLOSEDATE =
            T.let(
              :closedate,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          COMPANY =
            T.let(
              :company,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          COMPANY_SIZE =
            T.let(
              :company_size,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          COUNTRY =
            T.let(
              :country,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          CREATEDATE =
            T.let(
              :createdate,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          CURRENTLYINWORKFLOW =
            T.let(
              :currentlyinworkflow,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          DATE_OF_BIRTH =
            T.let(
              :date_of_birth,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          DAYS_TO_CLOSE =
            T.let(
              :days_to_close,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          DEGREE =
            T.let(
              :degree,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          EMAIL =
            T.let(
              :email,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          ENGAGEMENTS_LAST_MEETING_BOOKED =
            T.let(
              :engagements_last_meeting_booked,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          ENGAGEMENTS_LAST_MEETING_BOOKED_CAMPAIGN =
            T.let(
              :engagements_last_meeting_booked_campaign,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          ENGAGEMENTS_LAST_MEETING_BOOKED_MEDIUM =
            T.let(
              :engagements_last_meeting_booked_medium,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          ENGAGEMENTS_LAST_MEETING_BOOKED_SOURCE =
            T.let(
              :engagements_last_meeting_booked_source,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          FAX =
            T.let(
              :fax,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          FIELD_OF_STUDY =
            T.let(
              :field_of_study,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          FIRST_CONVERSION_DATE =
            T.let(
              :first_conversion_date,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          FIRST_CONVERSION_EVENT_NAME =
            T.let(
              :first_conversion_event_name,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          FIRST_DEAL_CREATED_DATE =
            T.let(
              :first_deal_created_date,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          FIRSTNAME =
            T.let(
              :firstname,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          FOLLOWERCOUNT =
            T.let(
              :followercount,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          GENDER =
            T.let(
              :gender,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          GRADUATION_DATE =
            T.let(
              :graduation_date,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_ADDITIONAL_EMAILS =
            T.let(
              :hs_additional_emails,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_ALL_CONTACT_VIDS =
            T.let(
              :hs_all_contact_vids,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_ANALYTICS_AVERAGE_PAGE_VIEWS =
            T.let(
              :hs_analytics_average_page_views,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_ANALYTICS_FIRST_REFERRER =
            T.let(
              :hs_analytics_first_referrer,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_ANALYTICS_FIRST_TIMESTAMP =
            T.let(
              :hs_analytics_first_timestamp,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_ANALYTICS_FIRST_TOUCH_CONVERTING_CAMPAIGN =
            T.let(
              :hs_analytics_first_touch_converting_campaign,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_ANALYTICS_FIRST_URL =
            T.let(
              :hs_analytics_first_url,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_ANALYTICS_FIRST_VISIT_TIMESTAMP =
            T.let(
              :hs_analytics_first_visit_timestamp,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_ANALYTICS_LAST_REFERRER =
            T.let(
              :hs_analytics_last_referrer,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_ANALYTICS_LAST_TIMESTAMP =
            T.let(
              :hs_analytics_last_timestamp,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_ANALYTICS_LAST_TOUCH_CONVERTING_CAMPAIGN =
            T.let(
              :hs_analytics_last_touch_converting_campaign,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_ANALYTICS_LAST_URL =
            T.let(
              :hs_analytics_last_url,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_ANALYTICS_LAST_VISIT_TIMESTAMP =
            T.let(
              :hs_analytics_last_visit_timestamp,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_ANALYTICS_NUM_EVENT_COMPLETIONS =
            T.let(
              :hs_analytics_num_event_completions,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_ANALYTICS_NUM_PAGE_VIEWS =
            T.let(
              :hs_analytics_num_page_views,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_ANALYTICS_NUM_VISITS =
            T.let(
              :hs_analytics_num_visits,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_ANALYTICS_REVENUE =
            T.let(
              :hs_analytics_revenue,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_ANALYTICS_SOURCE =
            T.let(
              :hs_analytics_source,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_ANALYTICS_SOURCE_COMPOSITE_DATA =
            T.let(
              :hs_analytics_source_composite_data,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_ANALYTICS_SOURCE_DATA_1 =
            T.let(
              :hs_analytics_source_data_1,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_ANALYTICS_SOURCE_DATA_2 =
            T.let(
              :hs_analytics_source_data_2,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_ASSOCIATED_TARGET_ACCOUNTS =
            T.let(
              :hs_associated_target_accounts,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_AVATAR_FILEMANAGER_KEY =
            T.let(
              :hs_avatar_filemanager_key,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_BING_AD_CLICKED =
            T.let(
              :hs_bing_ad_clicked,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_BING_CLICK_ID =
            T.let(
              :hs_bing_click_id,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_BUYING_ROLE =
            T.let(
              :hs_buying_role,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_CALCULATED_FORM_SUBMISSIONS =
            T.let(
              :hs_calculated_form_submissions,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_CALCULATED_MERGED_VIDS =
            T.let(
              :hs_calculated_merged_vids,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_CALCULATED_MOBILE_NUMBER =
            T.let(
              :hs_calculated_mobile_number,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_CALCULATED_PHONE_NUMBER =
            T.let(
              :hs_calculated_phone_number,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_CALCULATED_PHONE_NUMBER_AREA_CODE =
            T.let(
              :hs_calculated_phone_number_area_code,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_CALCULATED_PHONE_NUMBER_COUNTRY_CODE =
            T.let(
              :hs_calculated_phone_number_country_code,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_CALCULATED_PHONE_NUMBER_REGION_CODE =
            T.let(
              :hs_calculated_phone_number_region_code,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_CHAT_ASSISTANT_IQL_DATE =
            T.let(
              :hs_chat_assistant_iql_date,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_CHAT_ASSISTANT_SOURCE =
            T.let(
              :hs_chat_assistant_source,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_CHAT_ASSISTANT_SUMMARY =
            T.let(
              :hs_chat_assistant_summary,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_CLICKED_LINKEDIN_AD =
            T.let(
              :hs_clicked_linkedin_ad,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_CONTACT_CREATION_LEGAL_BASIS_SOURCE_INSTANCE_ID =
            T.let(
              :hs_contact_creation_legal_basis_source_instance_id,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_CONTACT_ENRICHMENT_OPT_OUT =
            T.let(
              :hs_contact_enrichment_opt_out,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_CONTACT_ENRICHMENT_OPT_OUT_TIMESTAMP =
            T.let(
              :hs_contact_enrichment_opt_out_timestamp,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_CONTENT_MEMBERSHIP_EMAIL =
            T.let(
              :hs_content_membership_email,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_CONTENT_MEMBERSHIP_EMAIL_CONFIRMED =
            T.let(
              :hs_content_membership_email_confirmed,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_CONTENT_MEMBERSHIP_FOLLOW_UP_ENQUEUED_AT =
            T.let(
              :hs_content_membership_follow_up_enqueued_at,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_CONTENT_MEMBERSHIP_NOTES =
            T.let(
              :hs_content_membership_notes,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_CONTENT_MEMBERSHIP_REGISTERED_AT =
            T.let(
              :hs_content_membership_registered_at,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_CONTENT_MEMBERSHIP_REGISTRATION_DOMAIN_SENT_TO =
            T.let(
              :hs_content_membership_registration_domain_sent_to,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_CONTENT_MEMBERSHIP_REGISTRATION_EMAIL_SENT_AT =
            T.let(
              :hs_content_membership_registration_email_sent_at,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_CONTENT_MEMBERSHIP_STATUS =
            T.let(
              :hs_content_membership_status,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_CONVERSATIONS_VISITOR_EMAIL =
            T.let(
              :hs_conversations_visitor_email,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_COUNT_IS_UNWORKED =
            T.let(
              :hs_count_is_unworked,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_COUNT_IS_WORKED =
            T.let(
              :hs_count_is_worked,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_COUNTRY_REGION_CODE =
            T.let(
              :hs_country_region_code,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_CREATED_BY_CONVERSATIONS =
            T.let(
              :hs_created_by_conversations,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_CROSS_ACCOUNT_NOTE =
            T.let(
              :hs_cross_account_note,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_CROSS_SELL_OPPORTUNITY =
            T.let(
              :hs_cross_sell_opportunity,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_CURRENT_CUSTOMER =
            T.let(
              :hs_current_customer,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_CURRENTLY_ENROLLED_IN_PROSPECTING_AGENT =
            T.let(
              :hs_currently_enrolled_in_prospecting_agent,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_CUSTOMER_AGENT_LEAD_STATUS =
            T.let(
              :hs_customer_agent_lead_status,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_DATA_PRIVACY_ADS_CONSENT =
            T.let(
              :hs_data_privacy_ads_consent,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_DATE_ENTERED_CUSTOMER =
            T.let(
              :hs_date_entered_customer,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_DATE_ENTERED_EVANGELIST =
            T.let(
              :hs_date_entered_evangelist,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_DATE_ENTERED_LEAD =
            T.let(
              :hs_date_entered_lead,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_DATE_ENTERED_MARKETINGQUALIFIEDLEAD =
            T.let(
              :hs_date_entered_marketingqualifiedlead,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_DATE_ENTERED_OPPORTUNITY =
            T.let(
              :hs_date_entered_opportunity,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_DATE_ENTERED_OTHER =
            T.let(
              :hs_date_entered_other,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_DATE_ENTERED_SALESQUALIFIEDLEAD =
            T.let(
              :hs_date_entered_salesqualifiedlead,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_DATE_ENTERED_SUBSCRIBER =
            T.let(
              :hs_date_entered_subscriber,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_DATE_EXITED_CUSTOMER =
            T.let(
              :hs_date_exited_customer,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_DATE_EXITED_EVANGELIST =
            T.let(
              :hs_date_exited_evangelist,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_DATE_EXITED_LEAD =
            T.let(
              :hs_date_exited_lead,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_DATE_EXITED_MARKETINGQUALIFIEDLEAD =
            T.let(
              :hs_date_exited_marketingqualifiedlead,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_DATE_EXITED_OPPORTUNITY =
            T.let(
              :hs_date_exited_opportunity,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_DATE_EXITED_OTHER =
            T.let(
              :hs_date_exited_other,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_DATE_EXITED_SALESQUALIFIEDLEAD =
            T.let(
              :hs_date_exited_salesqualifiedlead,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_DATE_EXITED_SUBSCRIBER =
            T.let(
              :hs_date_exited_subscriber,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_DOCUMENT_LAST_REVISITED =
            T.let(
              :hs_document_last_revisited,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_EMAIL_BAD_ADDRESS =
            T.let(
              :hs_email_bad_address,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_EMAIL_BOUNCE =
            T.let(
              :hs_email_bounce,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_EMAIL_CLICK =
            T.let(
              :hs_email_click,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_EMAIL_CUSTOMER_QUARANTINED_REASON =
            T.let(
              :hs_email_customer_quarantined_reason,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_EMAIL_DELIVERED =
            T.let(
              :hs_email_delivered,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_EMAIL_DOMAIN =
            T.let(
              :hs_email_domain,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_EMAIL_FIRST_CLICK_DATE =
            T.let(
              :hs_email_first_click_date,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_EMAIL_FIRST_OPEN_DATE =
            T.let(
              :hs_email_first_open_date,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_EMAIL_FIRST_REPLY_DATE =
            T.let(
              :hs_email_first_reply_date,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_EMAIL_FIRST_SEND_DATE =
            T.let(
              :hs_email_first_send_date,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_EMAIL_HARD_BOUNCE_REASON =
            T.let(
              :hs_email_hard_bounce_reason,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_EMAIL_HARD_BOUNCE_REASON_ENUM =
            T.let(
              :hs_email_hard_bounce_reason_enum,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_EMAIL_IS_INELIGIBLE =
            T.let(
              :hs_email_is_ineligible,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_EMAIL_LAST_CLICK_DATE =
            T.let(
              :hs_email_last_click_date,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_EMAIL_LAST_EMAIL_NAME =
            T.let(
              :hs_email_last_email_name,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_EMAIL_LAST_OPEN_DATE =
            T.let(
              :hs_email_last_open_date,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_EMAIL_LAST_REPLY_DATE =
            T.let(
              :hs_email_last_reply_date,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_EMAIL_LAST_SEND_DATE =
            T.let(
              :hs_email_last_send_date,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_EMAIL_LIVE_SOURCING_RESTRICTED =
            T.let(
              :hs_email_live_sourcing_restricted,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_EMAIL_OPEN =
            T.let(
              :hs_email_open,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_EMAIL_OPTIMAL_SEND_DAY_OF_WEEK =
            T.let(
              :hs_email_optimal_send_day_of_week,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_EMAIL_OPTIMAL_SEND_TIME_OF_DAY =
            T.let(
              :hs_email_optimal_send_time_of_day,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_EMAIL_OPTOUT =
            T.let(
              :hs_email_optout,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_EMAIL_OPTOUT_SURVEY_REASON =
            T.let(
              :hs_email_optout_survey_reason,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_EMAIL_QUARANTINED =
            T.let(
              :hs_email_quarantined,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_EMAIL_QUARANTINED_REASON =
            T.let(
              :hs_email_quarantined_reason,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_EMAIL_RECIPIENT_FATIGUE_RECOVERY_TIME =
            T.let(
              :hs_email_recipient_fatigue_recovery_time,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_EMAIL_REPLIED =
            T.let(
              :hs_email_replied,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_EMAIL_SENDS_SINCE_LAST_ENGAGEMENT =
            T.let(
              :hs_email_sends_since_last_engagement,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_EMAIL_TYPE =
            T.let(
              :hs_email_type,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_EMAILCONFIRMATIONSTATUS =
            T.let(
              :hs_emailconfirmationstatus,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_EMPLOYMENT_CHANGE_DETECTED_DATE =
            T.let(
              :hs_employment_change_detected_date,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_ENRICHED_EMAIL_BOUNCE_DETECTED =
            T.let(
              :hs_enriched_email_bounce_detected,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_EXCLUDED_FROM_CROSS_ACCOUNT_DATA_MIRRORING =
            T.let(
              :hs_excluded_from_cross_account_data_mirroring,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_FACEBOOK_AD_CLICKED =
            T.let(
              :hs_facebook_ad_clicked,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_FACEBOOK_CLICK_ID =
            T.let(
              :hs_facebook_click_id,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_FACEBOOKID =
            T.let(
              :hs_facebookid,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_FEEDBACK_LAST_CES_SURVEY_DATE =
            T.let(
              :hs_feedback_last_ces_survey_date,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_FEEDBACK_LAST_CES_SURVEY_FOLLOW_UP =
            T.let(
              :hs_feedback_last_ces_survey_follow_up,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_FEEDBACK_LAST_CES_SURVEY_RATING =
            T.let(
              :hs_feedback_last_ces_survey_rating,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_FEEDBACK_LAST_CSAT_SURVEY_DATE =
            T.let(
              :hs_feedback_last_csat_survey_date,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_FEEDBACK_LAST_CSAT_SURVEY_FOLLOW_UP =
            T.let(
              :hs_feedback_last_csat_survey_follow_up,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_FEEDBACK_LAST_CSAT_SURVEY_RATING =
            T.let(
              :hs_feedback_last_csat_survey_rating,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_FEEDBACK_LAST_NPS_FOLLOW_UP =
            T.let(
              :hs_feedback_last_nps_follow_up,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_FEEDBACK_LAST_NPS_RATING =
            T.let(
              :hs_feedback_last_nps_rating,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_FEEDBACK_LAST_NPS_RATING_NUMBER =
            T.let(
              :hs_feedback_last_nps_rating_number,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_FEEDBACK_LAST_SURVEY_DATE =
            T.let(
              :hs_feedback_last_survey_date,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_FEEDBACK_SHOW_NPS_WEB_SURVEY =
            T.let(
              :hs_feedback_show_nps_web_survey,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_FIRST_CLOSED_ORDER_ID =
            T.let(
              :hs_first_closed_order_id,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_FIRST_ENGAGEMENT_OBJECT_ID =
            T.let(
              :hs_first_engagement_object_id,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_FIRST_ORDER_CLOSED_DATE =
            T.let(
              :hs_first_order_closed_date,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_FIRST_OUTREACH_DATE =
            T.let(
              :hs_first_outreach_date,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_FIRST_SUBSCRIPTION_CREATE_DATE =
            T.let(
              :hs_first_subscription_create_date,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_FULL_NAME_OR_EMAIL =
            T.let(
              :hs_full_name_or_email,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_GEOHASH_1 =
            T.let(
              :hs_geohash_1,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_GEOHASH_2 =
            T.let(
              :hs_geohash_2,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_GEOHASH_3 =
            T.let(
              :hs_geohash_3,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_GEOHASH_4 =
            T.let(
              :hs_geohash_4,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_GEOHASH_5 =
            T.let(
              :hs_geohash_5,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_GEOHASH_6 =
            T.let(
              :hs_geohash_6,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_GOOGLE_CLICK_ID =
            T.let(
              :hs_google_click_id,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_GOOGLEPLUSID =
            T.let(
              :hs_googleplusid,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_GPS_COORDINATES =
            T.let(
              :hs_gps_coordinates,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_GPS_ERROR =
            T.let(
              :hs_gps_error,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_GPS_LATITUDE =
            T.let(
              :hs_gps_latitude,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_GPS_LONGITUDE =
            T.let(
              :hs_gps_longitude,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_HAS_ACTIVE_SUBSCRIPTION =
            T.let(
              :hs_has_active_subscription,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_INFERRED_LANGUAGE_CODES =
            T.let(
              :hs_inferred_language_codes,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_INTENT_PAID_UP_TO_DATE =
            T.let(
              :hs_intent_paid_up_to_date,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_INTENT_SIGNALS_ENABLED =
            T.let(
              :hs_intent_signals_enabled,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_IP_TIMEZONE =
            T.let(
              :hs_ip_timezone,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_IS_CONTACT =
            T.let(
              :hs_is_contact,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_IS_ENRICHED =
            T.let(
              :hs_is_enriched,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_IS_MERGE_REVERTIBLE =
            T.let(
              :hs_is_merge_revertible,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_IS_UNWORKED =
            T.let(
              :hs_is_unworked,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_JOB_CHANGE_DETECTED_DATE =
            T.let(
              :hs_job_change_detected_date,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_JOURNEY_STAGE =
            T.let(
              :hs_journey_stage,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_LANGUAGE =
            T.let(
              :hs_language,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_LAST_METERED_ENRICHMENT_TIMESTAMP =
            T.let(
              :hs_last_metered_enrichment_timestamp,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_LAST_SALES_ACTIVITY_DATE =
            T.let(
              :hs_last_sales_activity_date,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_LAST_SALES_ACTIVITY_TIMESTAMP =
            T.let(
              :hs_last_sales_activity_timestamp,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_LAST_SALES_ACTIVITY_TYPE =
            T.let(
              :hs_last_sales_activity_type,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_LAST_SMS_SEND_DATE =
            T.let(
              :hs_last_sms_send_date,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_LAST_SMS_SEND_NAME =
            T.let(
              :hs_last_sms_send_name,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_LATEST_DISQUALIFIED_LEAD_DATE =
            T.let(
              :hs_latest_disqualified_lead_date,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_LATEST_MEETING_ACTIVITY =
            T.let(
              :hs_latest_meeting_activity,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_LATEST_OPEN_LEAD_DATE =
            T.let(
              :hs_latest_open_lead_date,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_LATEST_QUALIFIED_LEAD_DATE =
            T.let(
              :hs_latest_qualified_lead_date,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_LATEST_SEQUENCE_ENDED_DATE =
            T.let(
              :hs_latest_sequence_ended_date,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_LATEST_SEQUENCE_ENROLLED =
            T.let(
              :hs_latest_sequence_enrolled,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_LATEST_SEQUENCE_ENROLLED_DATE =
            T.let(
              :hs_latest_sequence_enrolled_date,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_LATEST_SEQUENCE_FINISHED_DATE =
            T.let(
              :hs_latest_sequence_finished_date,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_LATEST_SEQUENCE_UNENROLLED_DATE =
            T.let(
              :hs_latest_sequence_unenrolled_date,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_LATEST_SOURCE =
            T.let(
              :hs_latest_source,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_LATEST_SOURCE_COMPOSITE_DATA =
            T.let(
              :hs_latest_source_composite_data,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_LATEST_SOURCE_DATA_1 =
            T.let(
              :hs_latest_source_data_1,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_LATEST_SOURCE_DATA_2 =
            T.let(
              :hs_latest_source_data_2,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_LATEST_SOURCE_TIMESTAMP =
            T.let(
              :hs_latest_source_timestamp,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_LATEST_SUBSCRIPTION_CREATE_DATE =
            T.let(
              :hs_latest_subscription_create_date,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_LATITUDE =
            T.let(
              :hs_latitude,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_LEAD_STATUS =
            T.let(
              :hs_lead_status,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_LEGAL_BASIS =
            T.let(
              :hs_legal_basis,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_LIFECYCLESTAGE_CUSTOMER_DATE =
            T.let(
              :hs_lifecyclestage_customer_date,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_LIFECYCLESTAGE_EVANGELIST_DATE =
            T.let(
              :hs_lifecyclestage_evangelist_date,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_LIFECYCLESTAGE_LEAD_DATE =
            T.let(
              :hs_lifecyclestage_lead_date,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_LIFECYCLESTAGE_MARKETINGQUALIFIEDLEAD_DATE =
            T.let(
              :hs_lifecyclestage_marketingqualifiedlead_date,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_LIFECYCLESTAGE_OPPORTUNITY_DATE =
            T.let(
              :hs_lifecyclestage_opportunity_date,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_LIFECYCLESTAGE_OTHER_DATE =
            T.let(
              :hs_lifecyclestage_other_date,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_LIFECYCLESTAGE_SALESQUALIFIEDLEAD_DATE =
            T.let(
              :hs_lifecyclestage_salesqualifiedlead_date,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_LIFECYCLESTAGE_SUBSCRIBER_DATE =
            T.let(
              :hs_lifecyclestage_subscriber_date,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_LINKEDIN_AD_CLICKED =
            T.let(
              :hs_linkedin_ad_clicked,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_LINKEDIN_CLICK_ID =
            T.let(
              :hs_linkedin_click_id,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_LINKEDIN_URL =
            T.let(
              :hs_linkedin_url,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_LINKEDINID =
            T.let(
              :hs_linkedinid,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_LIVE_ENRICHMENT_DEADLINE =
            T.let(
              :hs_live_enrichment_deadline,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_LONGITUDE =
            T.let(
              :hs_longitude,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_MANUAL_CAMPAIGN_IDS =
            T.let(
              :hs_manual_campaign_ids,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_MARKETABLE_REASON_ID =
            T.let(
              :hs_marketable_reason_id,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_MARKETABLE_REASON_TYPE =
            T.let(
              :hs_marketable_reason_type,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_MARKETABLE_STATUS =
            T.let(
              :hs_marketable_status,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_MARKETABLE_UNTIL_RENEWAL =
            T.let(
              :hs_marketable_until_renewal,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_MEMBERSHIP_HAS_ACCESSED_PRIVATE_CONTENT =
            T.let(
              :hs_membership_has_accessed_private_content,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_MEMBERSHIP_LAST_PRIVATE_CONTENT_ACCESS_DATE =
            T.let(
              :hs_membership_last_private_content_access_date,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_MESSAGING_ENGAGEMENT_SCORE =
            T.let(
              :hs_messaging_engagement_score,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_MOBILE_SDK_PUSH_TOKENS =
            T.let(
              :hs_mobile_sdk_push_tokens,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_NOTES_LAST_ACTIVITY =
            T.let(
              :hs_notes_last_activity,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_NOTES_NEXT_ACTIVITY =
            T.let(
              :hs_notes_next_activity,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_NOTES_NEXT_ACTIVITY_TYPE =
            T.let(
              :hs_notes_next_activity_type,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_PERSONA =
            T.let(
              :hs_persona,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_PINNED_ENGAGEMENT_ID =
            T.let(
              :hs_pinned_engagement_id,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_PIPELINE =
            T.let(
              :hs_pipeline,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_PREDICTIVECONTACTSCORE =
            T.let(
              :hs_predictivecontactscore,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_PREDICTIVECONTACTSCORE_TMP =
            T.let(
              :hs_predictivecontactscore_tmp,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_PREDICTIVECONTACTSCORE_V2 =
            T.let(
              :hs_predictivecontactscore_v2,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_PREDICTIVECONTACTSCOREBUCKET =
            T.let(
              :hs_predictivecontactscorebucket,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_PREDICTIVESCORINGTIER =
            T.let(
              :hs_predictivescoringtier,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_PREDICTIVESCORINGTIER_TMP =
            T.let(
              :hs_predictivescoringtier_tmp,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_PROSPECTING_AGENT_ACTIVELY_ENROLLED_COUNT =
            T.let(
              :hs_prospecting_agent_actively_enrolled_count,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_PROSPECTING_AGENT_LAST_ENROLLED =
            T.let(
              :hs_prospecting_agent_last_enrolled,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_PROSPECTING_AGENT_TOTAL_ENROLLED_COUNT =
            T.let(
              :hs_prospecting_agent_total_enrolled_count,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_QUARANTINED_EMAILS =
            T.let(
              :hs_quarantined_emails,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_RECENT_CLOSED_ORDER_DATE =
            T.let(
              :hs_recent_closed_order_date,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_REGISTERED_MEMBER =
            T.let(
              :hs_registered_member,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_REGISTRATION_METHOD =
            T.let(
              :hs_registration_method,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_RETURNING_TO_OFFICE_DETECTED_DATE =
            T.let(
              :hs_returning_to_office_detected_date,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_ROLE =
            T.let(
              :hs_role,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_SA_FIRST_ENGAGEMENT_DATE =
            T.let(
              :hs_sa_first_engagement_date,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_SA_FIRST_ENGAGEMENT_DESCR =
            T.let(
              :hs_sa_first_engagement_descr,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_SA_FIRST_ENGAGEMENT_OBJECT_TYPE =
            T.let(
              :hs_sa_first_engagement_object_type,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_SALES_EMAIL_LAST_CLICKED =
            T.let(
              :hs_sales_email_last_clicked,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_SALES_EMAIL_LAST_OPENED =
            T.let(
              :hs_sales_email_last_opened,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_SALES_EMAIL_LAST_REPLIED =
            T.let(
              :hs_sales_email_last_replied,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_SEARCHABLE_CALCULATED_INTERNATIONAL_MOBILE_NUMBER =
            T.let(
              :hs_searchable_calculated_international_mobile_number,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_SEARCHABLE_CALCULATED_INTERNATIONAL_PHONE_NUMBER =
            T.let(
              :hs_searchable_calculated_international_phone_number,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_SEARCHABLE_CALCULATED_MOBILE_NUMBER =
            T.let(
              :hs_searchable_calculated_mobile_number,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_SEARCHABLE_CALCULATED_PHONE_NUMBER =
            T.let(
              :hs_searchable_calculated_phone_number,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_SENIORITY =
            T.let(
              :hs_seniority,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_SEQUENCES_ACTIVELY_ENROLLED_COUNT =
            T.let(
              :hs_sequences_actively_enrolled_count,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_SEQUENCES_ENROLLED_COUNT =
            T.let(
              :hs_sequences_enrolled_count,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_SEQUENCES_IS_ENROLLED =
            T.let(
              :hs_sequences_is_enrolled,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_SOCIAL_FACEBOOK_CLICKS =
            T.let(
              :hs_social_facebook_clicks,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_SOCIAL_GOOGLE_PLUS_CLICKS =
            T.let(
              :hs_social_google_plus_clicks,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_SOCIAL_LAST_ENGAGEMENT =
            T.let(
              :hs_social_last_engagement,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_SOCIAL_LINKEDIN_CLICKS =
            T.let(
              :hs_social_linkedin_clicks,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_SOCIAL_NUM_BROADCAST_CLICKS =
            T.let(
              :hs_social_num_broadcast_clicks,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_SOCIAL_TWITTER_CLICKS =
            T.let(
              :hs_social_twitter_clicks,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_SOURCE_OBJECT_ID =
            T.let(
              :hs_source_object_id,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_SOURCE_PORTAL_ID =
            T.let(
              :hs_source_portal_id,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_STATE_CODE =
            T.let(
              :hs_state_code,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_SUB_ROLE =
            T.let(
              :hs_sub_role,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_TESTPURGE =
            T.let(
              :hs_testpurge,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_TESTROLLBACK =
            T.let(
              :hs_testrollback,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_TIKTOK_AD_CLICKED =
            T.let(
              :hs_tiktok_ad_clicked,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_TIKTOK_CLICK_ID =
            T.let(
              :hs_tiktok_click_id,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_TIME_BETWEEN_CONTACT_CREATION_AND_DEAL_CLOSE =
            T.let(
              :hs_time_between_contact_creation_and_deal_close,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_TIME_BETWEEN_CONTACT_CREATION_AND_DEAL_CREATION =
            T.let(
              :hs_time_between_contact_creation_and_deal_creation,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_TIME_IN_CUSTOMER =
            T.let(
              :hs_time_in_customer,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_TIME_IN_EVANGELIST =
            T.let(
              :hs_time_in_evangelist,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_TIME_IN_LEAD =
            T.let(
              :hs_time_in_lead,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_TIME_IN_MARKETINGQUALIFIEDLEAD =
            T.let(
              :hs_time_in_marketingqualifiedlead,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_TIME_IN_OPPORTUNITY =
            T.let(
              :hs_time_in_opportunity,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_TIME_IN_OTHER =
            T.let(
              :hs_time_in_other,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_TIME_IN_SALESQUALIFIEDLEAD =
            T.let(
              :hs_time_in_salesqualifiedlead,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_TIME_IN_SUBSCRIBER =
            T.let(
              :hs_time_in_subscriber,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_TIME_TO_FIRST_ENGAGEMENT =
            T.let(
              :hs_time_to_first_engagement,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_TIME_TO_MOVE_FROM_LEAD_TO_CUSTOMER =
            T.let(
              :hs_time_to_move_from_lead_to_customer,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_TIME_TO_MOVE_FROM_MARKETINGQUALIFIEDLEAD_TO_CUSTOMER =
            T.let(
              :hs_time_to_move_from_marketingqualifiedlead_to_customer,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_TIME_TO_MOVE_FROM_OPPORTUNITY_TO_CUSTOMER =
            T.let(
              :hs_time_to_move_from_opportunity_to_customer,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_TIME_TO_MOVE_FROM_SALESQUALIFIEDLEAD_TO_CUSTOMER =
            T.let(
              :hs_time_to_move_from_salesqualifiedlead_to_customer,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_TIME_TO_MOVE_FROM_SUBSCRIBER_TO_CUSTOMER =
            T.let(
              :hs_time_to_move_from_subscriber_to_customer,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_TIMEZONE =
            T.let(
              :hs_timezone,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_TWITTERID =
            T.let(
              :hs_twitterid,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_V2_CUMULATIVE_TIME_IN_CUSTOMER =
            T.let(
              :hs_v2_cumulative_time_in_customer,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_V2_CUMULATIVE_TIME_IN_EVANGELIST =
            T.let(
              :hs_v2_cumulative_time_in_evangelist,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_V2_CUMULATIVE_TIME_IN_LEAD =
            T.let(
              :hs_v2_cumulative_time_in_lead,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_V2_CUMULATIVE_TIME_IN_MARKETINGQUALIFIEDLEAD =
            T.let(
              :hs_v2_cumulative_time_in_marketingqualifiedlead,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_V2_CUMULATIVE_TIME_IN_OPPORTUNITY =
            T.let(
              :hs_v2_cumulative_time_in_opportunity,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_V2_CUMULATIVE_TIME_IN_OTHER =
            T.let(
              :hs_v2_cumulative_time_in_other,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_V2_CUMULATIVE_TIME_IN_SALESQUALIFIEDLEAD =
            T.let(
              :hs_v2_cumulative_time_in_salesqualifiedlead,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_V2_CUMULATIVE_TIME_IN_SUBSCRIBER =
            T.let(
              :hs_v2_cumulative_time_in_subscriber,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_V2_DATE_ENTERED_CURRENT_STAGE =
            T.let(
              :hs_v2_date_entered_current_stage,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_V2_DATE_ENTERED_CUSTOMER =
            T.let(
              :hs_v2_date_entered_customer,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_V2_DATE_ENTERED_EVANGELIST =
            T.let(
              :hs_v2_date_entered_evangelist,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_V2_DATE_ENTERED_LEAD =
            T.let(
              :hs_v2_date_entered_lead,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_V2_DATE_ENTERED_MARKETINGQUALIFIEDLEAD =
            T.let(
              :hs_v2_date_entered_marketingqualifiedlead,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_V2_DATE_ENTERED_OPPORTUNITY =
            T.let(
              :hs_v2_date_entered_opportunity,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_V2_DATE_ENTERED_OTHER =
            T.let(
              :hs_v2_date_entered_other,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_V2_DATE_ENTERED_SALESQUALIFIEDLEAD =
            T.let(
              :hs_v2_date_entered_salesqualifiedlead,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_V2_DATE_ENTERED_SUBSCRIBER =
            T.let(
              :hs_v2_date_entered_subscriber,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_V2_DATE_EXITED_CUSTOMER =
            T.let(
              :hs_v2_date_exited_customer,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_V2_DATE_EXITED_EVANGELIST =
            T.let(
              :hs_v2_date_exited_evangelist,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_V2_DATE_EXITED_LEAD =
            T.let(
              :hs_v2_date_exited_lead,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_V2_DATE_EXITED_MARKETINGQUALIFIEDLEAD =
            T.let(
              :hs_v2_date_exited_marketingqualifiedlead,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_V2_DATE_EXITED_OPPORTUNITY =
            T.let(
              :hs_v2_date_exited_opportunity,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_V2_DATE_EXITED_OTHER =
            T.let(
              :hs_v2_date_exited_other,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_V2_DATE_EXITED_SALESQUALIFIEDLEAD =
            T.let(
              :hs_v2_date_exited_salesqualifiedlead,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_V2_DATE_EXITED_SUBSCRIBER =
            T.let(
              :hs_v2_date_exited_subscriber,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_V2_LATEST_TIME_IN_CUSTOMER =
            T.let(
              :hs_v2_latest_time_in_customer,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_V2_LATEST_TIME_IN_EVANGELIST =
            T.let(
              :hs_v2_latest_time_in_evangelist,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_V2_LATEST_TIME_IN_LEAD =
            T.let(
              :hs_v2_latest_time_in_lead,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_V2_LATEST_TIME_IN_MARKETINGQUALIFIEDLEAD =
            T.let(
              :hs_v2_latest_time_in_marketingqualifiedlead,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_V2_LATEST_TIME_IN_OPPORTUNITY =
            T.let(
              :hs_v2_latest_time_in_opportunity,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_V2_LATEST_TIME_IN_OTHER =
            T.let(
              :hs_v2_latest_time_in_other,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_V2_LATEST_TIME_IN_SALESQUALIFIEDLEAD =
            T.let(
              :hs_v2_latest_time_in_salesqualifiedlead,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_V2_LATEST_TIME_IN_SUBSCRIBER =
            T.let(
              :hs_v2_latest_time_in_subscriber,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_V2_TIME_IN_CURRENT_STAGE =
            T.let(
              :hs_v2_time_in_current_stage,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HS_WHATSAPP_PHONE_NUMBER =
            T.let(
              :hs_whatsapp_phone_number,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HUBSPOT_OWNER_ID =
            T.let(
              :hubspot_owner_id,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          HUBSPOTSCORE =
            T.let(
              :hubspotscore,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          INDUSTRY =
            T.let(
              :industry,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          IP_CITY =
            T.let(
              :ip_city,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          IP_COUNTRY =
            T.let(
              :ip_country,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          IP_COUNTRY_CODE =
            T.let(
              :ip_country_code,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          IP_LATLON =
            T.let(
              :ip_latlon,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          IP_STATE =
            T.let(
              :ip_state,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          IP_STATE_CODE =
            T.let(
              :ip_state_code,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          IP_ZIPCODE =
            T.let(
              :ip_zipcode,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          JOB_FUNCTION =
            T.let(
              :job_function,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          JOBTITLE =
            T.let(
              :jobtitle,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          KLOUTSCOREGENERAL =
            T.let(
              :kloutscoregeneral,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          LASTMODIFIEDDATE =
            T.let(
              :lastmodifieddate,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          LASTNAME =
            T.let(
              :lastname,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          LIFECYCLESTAGE =
            T.let(
              :lifecyclestage,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          LINKEDINBIO =
            T.let(
              :linkedinbio,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          LINKEDINCONNECTIONS =
            T.let(
              :linkedinconnections,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          MARITAL_STATUS =
            T.let(
              :marital_status,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          MESSAGE =
            T.let(
              :message,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          MILITARY_STATUS =
            T.let(
              :military_status,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          MOBILEPHONE =
            T.let(
              :mobilephone,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          NOTES_LAST_CONTACTED =
            T.let(
              :notes_last_contacted,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          NOTES_LAST_UPDATED =
            T.let(
              :notes_last_updated,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          NOTES_NEXT_ACTIVITY_DATE =
            T.let(
              :notes_next_activity_date,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          NUM_ASSOCIATED_DEALS =
            T.let(
              :num_associated_deals,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          NUM_CONTACTED_NOTES =
            T.let(
              :num_contacted_notes,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          NUM_CONVERSION_EVENTS =
            T.let(
              :num_conversion_events,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          NUM_NOTES =
            T.let(
              :num_notes,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          NUM_UNIQUE_CONVERSION_EVENTS =
            T.let(
              :num_unique_conversion_events,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          NUMEMPLOYEES =
            T.let(
              :numemployees,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          OWNEREMAIL =
            T.let(
              :owneremail,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          OWNERNAME =
            T.let(
              :ownername,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          PHONE =
            T.let(
              :phone,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          PHOTO =
            T.let(
              :photo,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          RECENT_CONVERSION_DATE =
            T.let(
              :recent_conversion_date,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          RECENT_CONVERSION_EVENT_NAME =
            T.let(
              :recent_conversion_event_name,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          RECENT_DEAL_AMOUNT =
            T.let(
              :recent_deal_amount,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          RECENT_DEAL_CLOSE_DATE =
            T.let(
              :recent_deal_close_date,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          RELATIONSHIP_STATUS =
            T.let(
              :relationship_status,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          SALUTATION =
            T.let(
              :salutation,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          SCHOOL =
            T.let(
              :school,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          SENIORITY =
            T.let(
              :seniority,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          START_DATE =
            T.let(
              :start_date,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          STATE =
            T.let(
              :state,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          SURVEYMONKEYEVENTLASTUPDATED =
            T.let(
              :surveymonkeyeventlastupdated,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          TOTAL_REVENUE =
            T.let(
              :total_revenue,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          TWITTERBIO =
            T.let(
              :twitterbio,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          TWITTERHANDLE =
            T.let(
              :twitterhandle,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          TWITTERPROFILEPHOTO =
            T.let(
              :twitterprofilephoto,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          WEBINAREVENTLASTUPDATED =
            T.let(
              :webinareventlastupdated,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          WEBSITE =
            T.let(
              :website,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          WORK_EMAIL =
            T.let(
              :work_email,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )
          ZIP =
            T.let(
              :zip,
              HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Conversations::PreResolvedContact::ContactPropertiesLeadingToMatch::TaggedSymbol
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
