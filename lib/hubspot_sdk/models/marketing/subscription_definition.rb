# frozen_string_literal: true

module HubspotSDK
  module Models
    module Marketing
      class SubscriptionDefinition < HubspotSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The ID of the definition.
        #
        #   @return [String]
        required :id, String

        # @!attribute created_at
        #   Time at which the definition was created.
        #
        #   @return [Time]
        required :created_at, Time, api_name: :createdAt

        # @!attribute description
        #   A description of the subscription.
        #
        #   @return [String]
        required :description, String

        # @!attribute is_active
        #   Whether the definition is active or archived.
        #
        #   @return [Boolean]
        required :is_active, HubspotSDK::Internal::Type::Boolean, api_name: :isActive

        # @!attribute is_default
        #   A subscription definition created by HubSpot.
        #
        #   @return [Boolean]
        required :is_default, HubspotSDK::Internal::Type::Boolean, api_name: :isDefault

        # @!attribute is_internal
        #   A default description that is used by some HubSpot tools and cannot be edited.
        #
        #   @return [Boolean]
        required :is_internal, HubspotSDK::Internal::Type::Boolean, api_name: :isInternal

        # @!attribute name
        #   The name of the subscription.
        #
        #   @return [String]
        required :name, String

        # @!attribute updated_at
        #   Time at which the definition was last updated.
        #
        #   @return [Time]
        required :updated_at, Time, api_name: :updatedAt

        # @!attribute business_unit_id
        #   The ID of the business unit associated with the subscription definition.
        #
        #   @return [Integer, nil]
        optional :business_unit_id, Integer, api_name: :businessUnitId

        # @!attribute communication_method
        #   The method or technology used to contact.
        #
        #   @return [String, nil]
        optional :communication_method, String, api_name: :communicationMethod

        # @!attribute purpose
        #   The purpose of this subscription or the department in your organization that
        #   uses it.
        #
        #   @return [String, nil]
        optional :purpose, String

        # @!method initialize(id:, created_at:, description:, is_active:, is_default:, is_internal:, name:, updated_at:, business_unit_id: nil, communication_method: nil, purpose: nil)
        #   Some parameter documentations has been truncated, see
        #   {HubspotSDK::Models::Marketing::SubscriptionDefinition} for more details.
        #
        #   @param id [String] The ID of the definition.
        #
        #   @param created_at [Time] Time at which the definition was created.
        #
        #   @param description [String] A description of the subscription.
        #
        #   @param is_active [Boolean] Whether the definition is active or archived.
        #
        #   @param is_default [Boolean] A subscription definition created by HubSpot.
        #
        #   @param is_internal [Boolean] A default description that is used by some HubSpot tools and cannot be edited.
        #
        #   @param name [String] The name of the subscription.
        #
        #   @param updated_at [Time] Time at which the definition was last updated.
        #
        #   @param business_unit_id [Integer] The ID of the business unit associated with the subscription definition.
        #
        #   @param communication_method [String] The method or technology used to contact.
        #
        #   @param purpose [String] The purpose of this subscription or the department in your organization that use
      end
    end
  end
end
