# frozen_string_literal: true

module HubspotSDK
  module Models
    module Marketing
      module Subscriptions
        class LinkGenerationResponse < HubspotSDK::Internal::Type::BaseModel
          # @!attribute manage_preferences_url
          #
          #   @return [String]
          required :manage_preferences_url, String, api_name: :managePreferencesUrl

          # @!attribute subscriber_id_string
          #
          #   @return [String]
          required :subscriber_id_string, String, api_name: :subscriberIdString

          # @!attribute unsubscribe_all_url
          #
          #   @return [String]
          required :unsubscribe_all_url, String, api_name: :unsubscribeAllUrl

          # @!attribute unsubscribe_single_url
          #
          #   @return [String, nil]
          optional :unsubscribe_single_url, String, api_name: :unsubscribeSingleUrl

          # @!method initialize(manage_preferences_url:, subscriber_id_string:, unsubscribe_all_url:, unsubscribe_single_url: nil)
          #   @param manage_preferences_url [String]
          #   @param subscriber_id_string [String]
          #   @param unsubscribe_all_url [String]
          #   @param unsubscribe_single_url [String]
        end
      end
    end
  end
end
