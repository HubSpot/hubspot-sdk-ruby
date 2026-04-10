# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Marketing
      # @see HubSpotSDK::Resources::Marketing::Emails#list
      class EmailListParams < HubSpotSDK::Internal::Type::BaseModel
        extend HubSpotSDK::Internal::Type::RequestParameters::Converter
        include HubSpotSDK::Internal::Type::RequestParameters

        # @!attribute after
        #   The paging cursor token of the last successfully read resource will be returned
        #   as the `paging.next.after` JSON property of a paged response containing more
        #   results.
        #
        #   @return [String, nil]
        optional :after, String

        # @!attribute archived
        #   Whether to return only results that have been archived.
        #
        #   @return [Boolean, nil]
        optional :archived, HubSpotSDK::Internal::Type::Boolean

        # @!attribute campaign
        #
        #   @return [String, nil]
        optional :campaign, String

        # @!attribute created_after
        #
        #   @return [Time, nil]
        optional :created_after, Time

        # @!attribute created_at
        #
        #   @return [Time, nil]
        optional :created_at, Time

        # @!attribute created_before
        #
        #   @return [Time, nil]
        optional :created_before, Time

        # @!attribute included_properties
        #
        #   @return [Array<String>, nil]
        optional :included_properties, HubSpotSDK::Internal::Type::ArrayOf[String]

        # @!attribute include_stats
        #
        #   @return [Boolean, nil]
        optional :include_stats, HubSpotSDK::Internal::Type::Boolean

        # @!attribute is_published
        #
        #   @return [Boolean, nil]
        optional :is_published, HubSpotSDK::Internal::Type::Boolean

        # @!attribute limit
        #   The maximum number of results to display per page.
        #
        #   @return [Integer, nil]
        optional :limit, Integer

        # @!attribute marketing_campaign_names
        #
        #   @return [Boolean, nil]
        optional :marketing_campaign_names, HubSpotSDK::Internal::Type::Boolean

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
        #
        #   @return [Array<String>, nil]
        optional :sort, HubSpotSDK::Internal::Type::ArrayOf[String]

        # @!attribute type
        #
        #   @return [Symbol, HubSpotSDK::Models::Marketing::EmailListParams::Type, nil]
        optional :type, enum: -> { HubSpotSDK::Marketing::EmailListParams::Type }

        # @!attribute updated_after
        #
        #   @return [Time, nil]
        optional :updated_after, Time

        # @!attribute updated_at
        #
        #   @return [Time, nil]
        optional :updated_at, Time

        # @!attribute updated_before
        #
        #   @return [Time, nil]
        optional :updated_before, Time

        # @!attribute variant_stats
        #
        #   @return [Boolean, nil]
        optional :variant_stats, HubSpotSDK::Internal::Type::Boolean

        # @!attribute workflow_names
        #
        #   @return [Boolean, nil]
        optional :workflow_names, HubSpotSDK::Internal::Type::Boolean

        # @!method initialize(after: nil, archived: nil, campaign: nil, created_after: nil, created_at: nil, created_before: nil, included_properties: nil, include_stats: nil, is_published: nil, limit: nil, marketing_campaign_names: nil, published_after: nil, published_at: nil, published_before: nil, sort: nil, type: nil, updated_after: nil, updated_at: nil, updated_before: nil, variant_stats: nil, workflow_names: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {HubSpotSDK::Models::Marketing::EmailListParams} for more details.
        #
        #   @param after [String] The paging cursor token of the last successfully read resource will be returned
        #
        #   @param archived [Boolean] Whether to return only results that have been archived.
        #
        #   @param campaign [String]
        #
        #   @param created_after [Time]
        #
        #   @param created_at [Time]
        #
        #   @param created_before [Time]
        #
        #   @param included_properties [Array<String>]
        #
        #   @param include_stats [Boolean]
        #
        #   @param is_published [Boolean]
        #
        #   @param limit [Integer] The maximum number of results to display per page.
        #
        #   @param marketing_campaign_names [Boolean]
        #
        #   @param published_after [Time]
        #
        #   @param published_at [Time]
        #
        #   @param published_before [Time]
        #
        #   @param sort [Array<String>]
        #
        #   @param type [Symbol, HubSpotSDK::Models::Marketing::EmailListParams::Type]
        #
        #   @param updated_after [Time]
        #
        #   @param updated_at [Time]
        #
        #   @param updated_before [Time]
        #
        #   @param variant_stats [Boolean]
        #
        #   @param workflow_names [Boolean]
        #
        #   @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}]

        module Type
          extend HubSpotSDK::Internal::Type::Enum

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
          MANAGE_PREFERENCES_EMAIL = :MANAGE_PREFERENCES_EMAIL
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
