# frozen_string_literal: true

module HubspotSDK
  module Models
    module Marketing
      # @see HubspotSDK::Resources::Marketing::Emails#list
      class EmailListParams < HubspotSDK::Internal::Type::BaseModel
        extend HubspotSDK::Internal::Type::RequestParameters::Converter
        include HubspotSDK::Internal::Type::RequestParameters

        # @!attribute after
        #   The cursor token value to get the next set of results. You can get this from the
        #   `paging.next.after` JSON property of a paged response containing more results.
        #
        #   @return [String, nil]
        optional :after, String

        # @!attribute archived
        #   Specifies whether to return archived emails. Defaults to `false`.
        #
        #   @return [Boolean, nil]
        optional :archived, HubspotSDK::Internal::Type::Boolean

        # @!attribute campaign
        #   Filter by campaign GUID. All emails will be returned if not present.
        #
        #   @return [String, nil]
        optional :campaign, String

        # @!attribute created_after
        #   Only return emails created after the specified time.
        #
        #   @return [Time, nil]
        optional :created_after, Time

        # @!attribute created_at
        #   Only return emails created at exactly the specified time.
        #
        #   @return [Time, nil]
        optional :created_at, Time

        # @!attribute created_before
        #   Only return emails created before the specified time.
        #
        #   @return [Time, nil]
        optional :created_before, Time

        # @!attribute included_properties
        #   Limit the response to only include this specified list of properties.
        #
        #   @return [Array<String>, nil]
        optional :included_properties, HubspotSDK::Internal::Type::ArrayOf[String]

        # @!attribute include_stats
        #   Include statistics with emails.
        #
        #   @return [Boolean, nil]
        optional :include_stats, HubspotSDK::Internal::Type::Boolean

        # @!attribute is_published
        #   Filter by published/draft emails. All emails will be returned if not present.
        #
        #   @return [Boolean, nil]
        optional :is_published, HubspotSDK::Internal::Type::Boolean

        # @!attribute limit
        #   The maximum number of results to return. Default is 10.
        #
        #   @return [Integer, nil]
        optional :limit, Integer

        # @!attribute marketing_campaign_names
        #   Include the names for any associated marketing campaigns.
        #
        #   @return [Boolean, nil]
        optional :marketing_campaign_names, HubspotSDK::Internal::Type::Boolean

        # @!attribute published_after
        #
        #   @return [Time, nil]
        optional :published_after, Time

        # @!attribute published_at
        #
        #   @return [Time, nil]
        optional :published_at, Time

        # @!attribute published_before
        #
        #   @return [Time, nil]
        optional :published_before, Time

        # @!attribute sort
        #   Specifies which fields to use for sorting results. Valid fields are `name`,
        #   `createdAt`, `updatedAt`, `createdBy`, `updatedBy`. `createdAt` will be used by
        #   default.
        #
        #   @return [Array<String>, nil]
        optional :sort, HubspotSDK::Internal::Type::ArrayOf[String]

        # @!attribute type
        #   Email types to be filtered by. Multiple types can be included. All emails will
        #   be returned if not present.
        #
        #   @return [Symbol, HubspotSDK::Models::Marketing::EmailListParams::Type, nil]
        optional :type, enum: -> { HubspotSDK::Marketing::EmailListParams::Type }

        # @!attribute updated_after
        #   Only return emails last updated after the specified time.
        #
        #   @return [Time, nil]
        optional :updated_after, Time

        # @!attribute updated_at
        #   Only return emails last updated at exactly the specified time.
        #
        #   @return [Time, nil]
        optional :updated_at, Time

        # @!attribute updated_before
        #   Only return emails last updated before the specified time.
        #
        #   @return [Time, nil]
        optional :updated_before, Time

        # @!attribute workflow_names
        #   Include the names of any workflows associated with the returned emails.
        #
        #   @return [Boolean, nil]
        optional :workflow_names, HubspotSDK::Internal::Type::Boolean

        # @!method initialize(after: nil, archived: nil, campaign: nil, created_after: nil, created_at: nil, created_before: nil, included_properties: nil, include_stats: nil, is_published: nil, limit: nil, marketing_campaign_names: nil, published_after: nil, published_at: nil, published_before: nil, sort: nil, type: nil, updated_after: nil, updated_at: nil, updated_before: nil, workflow_names: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {HubspotSDK::Models::Marketing::EmailListParams} for more details.
        #
        #   @param after [String] The cursor token value to get the next set of results. You can get this from the
        #
        #   @param archived [Boolean] Specifies whether to return archived emails. Defaults to `false`.
        #
        #   @param campaign [String] Filter by campaign GUID. All emails will be returned if not present.
        #
        #   @param created_after [Time] Only return emails created after the specified time.
        #
        #   @param created_at [Time] Only return emails created at exactly the specified time.
        #
        #   @param created_before [Time] Only return emails created before the specified time.
        #
        #   @param included_properties [Array<String>] Limit the response to only include this specified list of properties.
        #
        #   @param include_stats [Boolean] Include statistics with emails.
        #
        #   @param is_published [Boolean] Filter by published/draft emails. All emails will be returned if not present.
        #
        #   @param limit [Integer] The maximum number of results to return. Default is 10.
        #
        #   @param marketing_campaign_names [Boolean] Include the names for any associated marketing campaigns.
        #
        #   @param published_after [Time]
        #
        #   @param published_at [Time]
        #
        #   @param published_before [Time]
        #
        #   @param sort [Array<String>] Specifies which fields to use for sorting results. Valid fields are `name`, `cre
        #
        #   @param type [Symbol, HubspotSDK::Models::Marketing::EmailListParams::Type] Email types to be filtered by. Multiple types can be included. All emails will b
        #
        #   @param updated_after [Time] Only return emails last updated after the specified time.
        #
        #   @param updated_at [Time] Only return emails last updated at exactly the specified time.
        #
        #   @param updated_before [Time] Only return emails last updated before the specified time.
        #
        #   @param workflow_names [Boolean] Include the names of any workflows associated with the returned emails.
        #
        #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]

        # Email types to be filtered by. Multiple types can be included. All emails will
        # be returned if not present.
        module Type
          extend HubspotSDK::Internal::Type::Enum

          AB_EMAIL = :AB_EMAIL
          AUTOMATED_AB_EMAIL = :AUTOMATED_AB_EMAIL
          AUTOMATED_EMAIL = :AUTOMATED_EMAIL
          BATCH_EMAIL = :BATCH_EMAIL
          BLOG_EMAIL = :BLOG_EMAIL
          BLOG_EMAIL_CHILD = :BLOG_EMAIL_CHILD
          FEEDBACK_CES_EMAIL = :FEEDBACK_CES_EMAIL
          FEEDBACK_CUSTOM_EMAIL = :FEEDBACK_CUSTOM_EMAIL
          FEEDBACK_CUSTOM_SURVEY_EMAIL = :FEEDBACK_CUSTOM_SURVEY_EMAIL
          FEEDBACK_NPS_EMAIL = :FEEDBACK_NPS_EMAIL
          FOLLOWUP_EMAIL = :FOLLOWUP_EMAIL
          LEADFLOW_EMAIL = :LEADFLOW_EMAIL
          LOCALTIME_EMAIL = :LOCALTIME_EMAIL
          MARKETING_SINGLE_SEND_API = :MARKETING_SINGLE_SEND_API
          MEMBERSHIP_EMAIL_VERIFICATION_EMAIL = :MEMBERSHIP_EMAIL_VERIFICATION_EMAIL
          MEMBERSHIP_FOLLOW_UP_EMAIL = :MEMBERSHIP_FOLLOW_UP_EMAIL
          MEMBERSHIP_OTP_LOGIN_EMAIL = :MEMBERSHIP_OTP_LOGIN_EMAIL
          MEMBERSHIP_PASSWORD_RESET_EMAIL = :MEMBERSHIP_PASSWORD_RESET_EMAIL
          MEMBERSHIP_PASSWORD_SAVED_EMAIL = :MEMBERSHIP_PASSWORD_SAVED_EMAIL
          MEMBERSHIP_PASSWORDLESS_AUTH_EMAIL = :MEMBERSHIP_PASSWORDLESS_AUTH_EMAIL
          MEMBERSHIP_REGISTRATION_EMAIL = :MEMBERSHIP_REGISTRATION_EMAIL
          MEMBERSHIP_REGISTRATION_FOLLOW_UP_EMAIL = :MEMBERSHIP_REGISTRATION_FOLLOW_UP_EMAIL
          MEMBERSHIP_VERIFICATION_EMAIL = :MEMBERSHIP_VERIFICATION_EMAIL
          OPTIN_EMAIL = :OPTIN_EMAIL
          OPTIN_FOLLOWUP_EMAIL = :OPTIN_FOLLOWUP_EMAIL
          RESUBSCRIBE_EMAIL = :RESUBSCRIBE_EMAIL
          RSS_EMAIL = :RSS_EMAIL
          RSS_EMAIL_CHILD = :RSS_EMAIL_CHILD
          SINGLE_SEND_API = :SINGLE_SEND_API
          SMTP_TOKEN = :SMTP_TOKEN
          TICKET_EMAIL = :TICKET_EMAIL

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
