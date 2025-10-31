# frozen_string_literal: true

module HubspotSDK
  module Models
    class PublicEmailSubscriptionFilter < HubspotSDK::Internal::Type::BaseModel
      # @!attribute accepted_statuses
      #
      #   @return [Array<String>]
      required :accepted_statuses, HubspotSDK::Internal::Type::ArrayOf[String], api_name: :acceptedStatuses

      # @!attribute filter_type
      #
      #   @return [Symbol, HubspotSDK::Models::PublicEmailSubscriptionFilter::FilterType]
      required :filter_type,
               enum: -> { HubspotSDK::PublicEmailSubscriptionFilter::FilterType },
               api_name: :filterType

      # @!attribute subscription_ids
      #
      #   @return [Array<String>]
      required :subscription_ids, HubspotSDK::Internal::Type::ArrayOf[String], api_name: :subscriptionIds

      # @!attribute subscription_type
      #
      #   @return [String, nil]
      optional :subscription_type, String, api_name: :subscriptionType

      # @!method initialize(accepted_statuses:, filter_type:, subscription_ids:, subscription_type: nil)
      #   @param accepted_statuses [Array<String>]
      #   @param filter_type [Symbol, HubspotSDK::Models::PublicEmailSubscriptionFilter::FilterType]
      #   @param subscription_ids [Array<String>]
      #   @param subscription_type [String]

      # @see HubspotSDK::Models::PublicEmailSubscriptionFilter#filter_type
      module FilterType
        extend HubspotSDK::Internal::Type::Enum

        EMAIL_SUBSCRIPTION = :EMAIL_SUBSCRIPTION

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
