# frozen_string_literal: true

module HubspotSDK
  module Models
    module Marketing
      # @see HubspotSDK::Resources::Marketing::Emails#get_ab_test_variation
      class EmailGetAbTestVariationParams < HubspotSDK::Internal::Type::BaseModel
        extend HubspotSDK::Internal::Type::RequestParameters::Converter
        include HubspotSDK::Internal::Type::RequestParameters

        # @!attribute email_id
        #
        #   @return [String]
        required :email_id, String

        # @!attribute archived
        #   Whether to return only results that have been archived.
        #
        #   @return [Boolean, nil]
        optional :archived, HubspotSDK::Internal::Type::Boolean

        # @!attribute included_properties
        #
        #   @return [Array<String>, nil]
        optional :included_properties, HubspotSDK::Internal::Type::ArrayOf[String]

        # @!attribute include_stats
        #
        #   @return [Boolean, nil]
        optional :include_stats, HubspotSDK::Internal::Type::Boolean

        # @!attribute marketing_campaign_names
        #
        #   @return [Boolean, nil]
        optional :marketing_campaign_names, HubspotSDK::Internal::Type::Boolean

        # @!attribute variant_stats
        #
        #   @return [Boolean, nil]
        optional :variant_stats, HubspotSDK::Internal::Type::Boolean

        # @!attribute workflow_names
        #
        #   @return [Boolean, nil]
        optional :workflow_names, HubspotSDK::Internal::Type::Boolean

        # @!method initialize(email_id:, archived: nil, included_properties: nil, include_stats: nil, marketing_campaign_names: nil, variant_stats: nil, workflow_names: nil, request_options: {})
        #   @param email_id [String]
        #
        #   @param archived [Boolean] Whether to return only results that have been archived.
        #
        #   @param included_properties [Array<String>]
        #
        #   @param include_stats [Boolean]
        #
        #   @param marketing_campaign_names [Boolean]
        #
        #   @param variant_stats [Boolean]
        #
        #   @param workflow_names [Boolean]
        #
        #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
