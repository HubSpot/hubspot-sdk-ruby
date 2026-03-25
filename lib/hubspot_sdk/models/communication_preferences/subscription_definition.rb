# frozen_string_literal: true

module HubspotSDK
  module Models
    module CommunicationPreferences
      class SubscriptionDefinition < HubspotSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The unique identifier for the subscription.
        #
        #   @return [String]
        required :id, String

        # @!attribute created_at
        #   The date and time when the subscription was created.
        #
        #   @return [Time]
        required :created_at, Time, api_name: :createdAt

        # @!attribute description
        #   A description of the subscription.
        #
        #   @return [String]
        required :description, String

        # @!attribute is_active
        #   Indicates whether the subscription is active.
        #
        #   @return [Boolean]
        required :is_active, HubspotSDK::Internal::Type::Boolean, api_name: :isActive

        # @!attribute is_default
        #   Indicates whether the subscription is the default option.
        #
        #   @return [Boolean]
        required :is_default, HubspotSDK::Internal::Type::Boolean, api_name: :isDefault

        # @!attribute is_internal
        #   Indicates whether the subscription is internal.
        #
        #   @return [Boolean]
        required :is_internal, HubspotSDK::Internal::Type::Boolean, api_name: :isInternal

        # @!attribute name
        #   The name of the subscription.
        #
        #   @return [String]
        required :name, String

        # @!attribute updated_at
        #   The date and time when the subscription was last updated.
        #
        #   @return [Time]
        required :updated_at, Time, api_name: :updatedAt

        # @!attribute business_unit_id
        #   The ID of the business unit associated with the subscription.
        #
        #   @return [Integer, nil]
        optional :business_unit_id, Integer, api_name: :businessUnitId

        # @!attribute communication_method
        #   The method of communication for the subscription.
        #
        #   @return [String, nil]
        optional :communication_method, String, api_name: :communicationMethod

        # @!attribute purpose
        #   The purpose of the subscription.
        #
        #   @return [String, nil]
        optional :purpose, String

        # @!attribute subscription_translations
        #   A list of translations associated with the subscription.
        #
        #   @return [Array<HubspotSDK::Models::CommunicationPreferences::PublicSubscriptionTranslation>, nil]
        optional :subscription_translations,
                 -> {
                   HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::CommunicationPreferences::PublicSubscriptionTranslation]
                 },
                 api_name: :subscriptionTranslations

        # @!method initialize(id:, created_at:, description:, is_active:, is_default:, is_internal:, name:, updated_at:, business_unit_id: nil, communication_method: nil, purpose: nil, subscription_translations: nil)
        #   @param id [String] The unique identifier for the subscription.
        #
        #   @param created_at [Time] The date and time when the subscription was created.
        #
        #   @param description [String] A description of the subscription.
        #
        #   @param is_active [Boolean] Indicates whether the subscription is active.
        #
        #   @param is_default [Boolean] Indicates whether the subscription is the default option.
        #
        #   @param is_internal [Boolean] Indicates whether the subscription is internal.
        #
        #   @param name [String] The name of the subscription.
        #
        #   @param updated_at [Time] The date and time when the subscription was last updated.
        #
        #   @param business_unit_id [Integer] The ID of the business unit associated with the subscription.
        #
        #   @param communication_method [String] The method of communication for the subscription.
        #
        #   @param purpose [String] The purpose of the subscription.
        #
        #   @param subscription_translations [Array<HubspotSDK::Models::CommunicationPreferences::PublicSubscriptionTranslation>] A list of translations associated with the subscription.
      end
    end
  end
end
