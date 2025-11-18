# frozen_string_literal: true

module HubspotSDK
  module Models
    module Marketing
      # @see HubspotSDK::Resources::Marketing::Emails#get_ab_test_variation
      class EmailGetAbTestVariationParams < HubspotSDK::Internal::Type::BaseModel
        extend HubspotSDK::Internal::Type::RequestParameters::Converter
        include HubspotSDK::Internal::Type::RequestParameters

        # @!attribute archived
        #   Boolean variable to request archived email
        #
        #   @return [Boolean, nil]
        optional :archived, HubspotSDK::Internal::Type::Boolean

        # @!attribute included_properties
        #   List of properties to be returned in the API response
        #
        #   @return [Array<String>, nil]
        optional :included_properties, HubspotSDK::Internal::Type::ArrayOf[String]

        # @!attribute include_stats
        #   Boolean variable to request stats to be returned in response
        #
        #   @return [Boolean, nil]
        optional :include_stats, HubspotSDK::Internal::Type::Boolean

        # @!attribute marketing_campaign_names
        #   Boolean variable to request name of the campaign in response
        #
        #   @return [Boolean, nil]
        optional :marketing_campaign_names, HubspotSDK::Internal::Type::Boolean

        # @!attribute workflow_names
        #   Boolean variable to request name of the associated workflows in response
        #
        #   @return [Boolean, nil]
        optional :workflow_names, HubspotSDK::Internal::Type::Boolean

        # @!method initialize(archived: nil, included_properties: nil, include_stats: nil, marketing_campaign_names: nil, workflow_names: nil, request_options: {})
        #   @param archived [Boolean] Boolean variable to request archived email
        #
        #   @param included_properties [Array<String>] List of properties to be returned in the API response
        #
        #   @param include_stats [Boolean] Boolean variable to request stats to be returned in response
        #
        #   @param marketing_campaign_names [Boolean] Boolean variable to request name of the campaign in response
        #
        #   @param workflow_names [Boolean] Boolean variable to request name of the associated workflows in response
        #
        #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
