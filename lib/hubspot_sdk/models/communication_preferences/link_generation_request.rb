# frozen_string_literal: true

module HubspotSDK
  module Models
    module CommunicationPreferences
      class LinkGenerationRequest < HubspotSDK::Internal::Type::BaseModel
        # @!attribute subscriber_id_string
        #   A string representing the unique identifier of the subscriber. This property is
        #   required.
        #
        #   @return [String]
        required :subscriber_id_string, String, api_name: :subscriberIdString

        # @!attribute language
        #   The language in which the generated link should be presented, represented as a
        #   string.
        #
        #   @return [String, nil]
        optional :language, String

        # @!attribute subscription_id
        #   The unique identifier for the subscription, represented as an integer in int64
        #   format.
        #
        #   @return [Integer, nil]
        optional :subscription_id, Integer, api_name: :subscriptionId

        # @!method initialize(subscriber_id_string:, language: nil, subscription_id: nil)
        #   Some parameter documentations has been truncated, see
        #   {HubspotSDK::Models::CommunicationPreferences::LinkGenerationRequest} for more
        #   details.
        #
        #   @param subscriber_id_string [String] A string representing the unique identifier of the subscriber. This property is
        #
        #   @param language [String] The language in which the generated link should be presented, represented as a s
        #
        #   @param subscription_id [Integer] The unique identifier for the subscription, represented as an integer in int64 f
      end
    end
  end
end
