# frozen_string_literal: true

module HubspotSDK
  module Models
    module Marketing
      module Subscriptions
        class LinkGenerationRequest < HubspotSDK::Internal::Type::BaseModel
          # @!attribute subscriber_id_string
          #
          #   @return [String]
          required :subscriber_id_string, String, api_name: :subscriberIdString

          # @!attribute language
          #
          #   @return [String, nil]
          optional :language, String

          # @!attribute subscription_id
          #
          #   @return [Integer, nil]
          optional :subscription_id, Integer, api_name: :subscriptionId

          # @!method initialize(subscriber_id_string:, language: nil, subscription_id: nil)
          #   @param subscriber_id_string [String]
          #   @param language [String]
          #   @param subscription_id [Integer]
        end
      end
    end
  end
end
