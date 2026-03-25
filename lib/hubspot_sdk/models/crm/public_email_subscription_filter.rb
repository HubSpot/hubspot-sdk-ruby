# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      class PublicEmailSubscriptionFilter < HubspotSDK::Internal::Type::BaseModel
        # @!attribute accepted_statuses
        #
        #   @return [Array<String>]
        required :accepted_statuses, HubspotSDK::Internal::Type::ArrayOf[String], api_name: :acceptedStatuses

        # @!attribute filter_type
        #   Indicates the type of filter (EMAIL_SUBSCRIPTION).
        #
        #   @return [Symbol, HubspotSDK::Models::Crm::PublicEmailSubscriptionFilter::FilterType]
        required :filter_type,
                 enum: -> { HubspotSDK::Crm::PublicEmailSubscriptionFilter::FilterType },
                 api_name: :filterType

        # @!attribute subscription_ids
        #
        #   @return [Array<String>]
        required :subscription_ids, HubspotSDK::Internal::Type::ArrayOf[String], api_name: :subscriptionIds

        # @!attribute subscription_type
        #   The type of subscription related to the filter (PORTAL, BRAND, SUBSCRIPTION,
        #   HARDBOUNCE, SPAMREPORT).
        #
        #   @return [String, nil]
        optional :subscription_type, String, api_name: :subscriptionType

        # @!method initialize(accepted_statuses:, filter_type:, subscription_ids:, subscription_type: nil)
        #   Some parameter documentations has been truncated, see
        #   {HubspotSDK::Models::Crm::PublicEmailSubscriptionFilter} for more details.
        #
        #   @param accepted_statuses [Array<String>]
        #
        #   @param filter_type [Symbol, HubspotSDK::Models::Crm::PublicEmailSubscriptionFilter::FilterType] Indicates the type of filter (EMAIL_SUBSCRIPTION).
        #
        #   @param subscription_ids [Array<String>]
        #
        #   @param subscription_type [String] The type of subscription related to the filter (PORTAL, BRAND, SUBSCRIPTION, HAR

        # Indicates the type of filter (EMAIL_SUBSCRIPTION).
        #
        # @see HubspotSDK::Models::Crm::PublicEmailSubscriptionFilter#filter_type
        module FilterType
          extend HubspotSDK::Internal::Type::Enum

          EMAIL_SUBSCRIPTION = :EMAIL_SUBSCRIPTION

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
