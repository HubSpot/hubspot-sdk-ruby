# frozen_string_literal: true

module HubspotSDK
  module Models
    module Marketing
      # @see HubspotSDK::Resources::Marketing::Emails#get
      class EmailGetParams < HubspotSDK::Internal::Type::BaseModel
        extend HubspotSDK::Internal::Type::RequestParameters::Converter
        include HubspotSDK::Internal::Type::RequestParameters

        # @!attribute archived
        #   Whether to return only results that have been archived.
        #
        #   @return [Boolean, nil]
        optional :archived, HubspotSDK::Internal::Type::Boolean

        # @!attribute included_properties
        #   Limit the response to only include the specified properties.
        #
        #   @return [Array<String>, nil]
        optional :included_properties, HubspotSDK::Internal::Type::ArrayOf[String]

        # @!attribute include_stats
        #   Include statistics with email.
        #
        #   @return [Boolean, nil]
        optional :include_stats, HubspotSDK::Internal::Type::Boolean

        # @!attribute marketing_campaign_names
        #   If set to true, loads `campaignName` and `campaignUtm`.
        #
        #   @return [Boolean, nil]
        optional :marketing_campaign_names, HubspotSDK::Internal::Type::Boolean

        # @!attribute workflow_names
        #   If set to true, loads workflows in which the email is used within a "send email"
        #   action.
        #
        #   @return [Boolean, nil]
        optional :workflow_names, HubspotSDK::Internal::Type::Boolean

        # @!method initialize(archived: nil, included_properties: nil, include_stats: nil, marketing_campaign_names: nil, workflow_names: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {HubspotSDK::Models::Marketing::EmailGetParams} for more details.
        #
        #   @param archived [Boolean] Whether to return only results that have been archived.
        #
        #   @param included_properties [Array<String>] Limit the response to only include the specified properties.
        #
        #   @param include_stats [Boolean] Include statistics with email.
        #
        #   @param marketing_campaign_names [Boolean] If set to true, loads `campaignName` and `campaignUtm`.
        #
        #   @param workflow_names [Boolean] If set to true, loads workflows in which the email is used within a "send email"
        #
        #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
