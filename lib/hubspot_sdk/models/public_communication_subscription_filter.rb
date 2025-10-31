# frozen_string_literal: true

module HubspotSDK
  module Models
    class PublicCommunicationSubscriptionFilter < HubspotSDK::Internal::Type::BaseModel
      # @!attribute accepted_opt_states
      #
      #   @return [Array<String>]
      required :accepted_opt_states, HubspotSDK::Internal::Type::ArrayOf[String], api_name: :acceptedOptStates

      # @!attribute channel
      #
      #   @return [String]
      required :channel, String

      # @!attribute filter_type
      #
      #   @return [Symbol, HubspotSDK::Models::PublicCommunicationSubscriptionFilter::FilterType]
      required :filter_type,
               enum: -> { HubspotSDK::PublicCommunicationSubscriptionFilter::FilterType },
               api_name: :filterType

      # @!attribute subscription_ids
      #
      #   @return [Array<String>]
      required :subscription_ids, HubspotSDK::Internal::Type::ArrayOf[String], api_name: :subscriptionIds

      # @!attribute subscription_type
      #
      #   @return [String]
      required :subscription_type, String, api_name: :subscriptionType

      # @!attribute business_unit_id
      #
      #   @return [String, nil]
      optional :business_unit_id, String, api_name: :businessUnitId

      # @!method initialize(accepted_opt_states:, channel:, filter_type:, subscription_ids:, subscription_type:, business_unit_id: nil)
      #   @param accepted_opt_states [Array<String>]
      #   @param channel [String]
      #   @param filter_type [Symbol, HubspotSDK::Models::PublicCommunicationSubscriptionFilter::FilterType]
      #   @param subscription_ids [Array<String>]
      #   @param subscription_type [String]
      #   @param business_unit_id [String]

      # @see HubspotSDK::Models::PublicCommunicationSubscriptionFilter#filter_type
      module FilterType
        extend HubspotSDK::Internal::Type::Enum

        COMMUNICATION_SUBSCRIPTION = :COMMUNICATION_SUBSCRIPTION

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
