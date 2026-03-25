# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      class PublicCommunicationSubscriptionFilter < HubspotSDK::Internal::Type::BaseModel
        # @!attribute accepted_opt_states
        #
        #   @return [Array<String>]
        required :accepted_opt_states,
                 HubspotSDK::Internal::Type::ArrayOf[String],
                 api_name: :acceptedOptStates

        # @!attribute channel
        #   Specifies the communication channel associated with the subscription filter
        #   (EMAIL, WHATSAPP, SMS).
        #
        #   @return [String]
        required :channel, String

        # @!attribute filter_type
        #   Indicates the type of filter, which is (COMMUNICATION_SUBSCRIPTION)
        #
        #   @return [Symbol, HubspotSDK::Models::Crm::PublicCommunicationSubscriptionFilter::FilterType]
        required :filter_type,
                 enum: -> { HubspotSDK::Crm::PublicCommunicationSubscriptionFilter::FilterType },
                 api_name: :filterType

        # @!attribute subscription_ids
        #
        #   @return [Array<String>]
        required :subscription_ids, HubspotSDK::Internal::Type::ArrayOf[String], api_name: :subscriptionIds

        # @!attribute subscription_type
        #   Defines the type of subscription related to the filter (PORTAL_WIDE,
        #   BUSINESS_UNIT_WIDE, INDIVIDUAL_SUBSCRIPTION)
        #
        #   @return [String]
        required :subscription_type, String, api_name: :subscriptionType

        # @!attribute business_unit_id
        #   The ID of the business unit associated with the subscription filter.
        #
        #   @return [String, nil]
        optional :business_unit_id, String, api_name: :businessUnitId

        # @!method initialize(accepted_opt_states:, channel:, filter_type:, subscription_ids:, subscription_type:, business_unit_id: nil)
        #   Some parameter documentations has been truncated, see
        #   {HubspotSDK::Models::Crm::PublicCommunicationSubscriptionFilter} for more
        #   details.
        #
        #   @param accepted_opt_states [Array<String>]
        #
        #   @param channel [String] Specifies the communication channel associated with the subscription filter (EMA
        #
        #   @param filter_type [Symbol, HubspotSDK::Models::Crm::PublicCommunicationSubscriptionFilter::FilterType] Indicates the type of filter, which is (COMMUNICATION_SUBSCRIPTION)
        #
        #   @param subscription_ids [Array<String>]
        #
        #   @param subscription_type [String] Defines the type of subscription related to the filter (PORTAL_WIDE, BUSINESS_UN
        #
        #   @param business_unit_id [String] The ID of the business unit associated with the subscription filter.

        # Indicates the type of filter, which is (COMMUNICATION_SUBSCRIPTION)
        #
        # @see HubspotSDK::Models::Crm::PublicCommunicationSubscriptionFilter#filter_type
        module FilterType
          extend HubspotSDK::Internal::Type::Enum

          COMMUNICATION_SUBSCRIPTION = :COMMUNICATION_SUBSCRIPTION

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
