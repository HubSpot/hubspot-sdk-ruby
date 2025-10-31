# frozen_string_literal: true

module HubspotSDK
  module Models
    module Marketing
      module Subscriptions
        class PublicSubscriptionTranslation < HubspotSDK::Internal::Type::BaseModel
          # @!attribute created_at
          #   The timestamp indicating when the subscription translation was created.
          #
          #   @return [Integer]
          required :created_at, Integer, api_name: :createdAt

          # @!attribute description
          #   A text description of the subscription translation.
          #
          #   @return [String]
          required :description, String

          # @!attribute language_code
          #   The code representing the language of the subscription translation.
          #
          #   @return [String]
          required :language_code, String, api_name: :languageCode

          # @!attribute name
          #   The name of the subscription translation.
          #
          #   @return [String]
          required :name, String

          # @!attribute subscription_id
          #   The unique identifier for the subscription associated with the translation.
          #
          #   @return [Integer]
          required :subscription_id, Integer, api_name: :subscriptionId

          # @!attribute updated_at
          #   The timestamp indicating when the subscription translation was last updated.
          #
          #   @return [Integer]
          required :updated_at, Integer, api_name: :updatedAt

          # @!method initialize(created_at:, description:, language_code:, name:, subscription_id:, updated_at:)
          #   @param created_at [Integer] The timestamp indicating when the subscription translation was created.
          #
          #   @param description [String] A text description of the subscription translation.
          #
          #   @param language_code [String] The code representing the language of the subscription translation.
          #
          #   @param name [String] The name of the subscription translation.
          #
          #   @param subscription_id [Integer] The unique identifier for the subscription associated with the translation.
          #
          #   @param updated_at [Integer] The timestamp indicating when the subscription translation was last updated.
        end
      end
    end
  end
end
