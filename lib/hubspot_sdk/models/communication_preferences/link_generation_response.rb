# frozen_string_literal: true

module HubspotSDK
  module Models
    module CommunicationPreferences
      # @see HubspotSDK::Resources::CommunicationPreferences#generate_links
      class LinkGenerationResponse < HubspotSDK::Internal::Type::BaseModel
        # @!attribute manage_preferences_url
        #   The URL where the subscriber can manage their communication preferences.
        #
        #   @return [String]
        required :manage_preferences_url, String, api_name: :managePreferencesUrl

        # @!attribute subscriber_id_string
        #   A string representing the unique identifier of the subscriber.
        #
        #   @return [String]
        required :subscriber_id_string, String, api_name: :subscriberIdString

        # @!attribute unsubscribe_all_url
        #   A string containing the URL for unsubscribing the subscriber from all
        #   communications.
        #
        #   @return [String]
        required :unsubscribe_all_url, String, api_name: :unsubscribeAllUrl

        # @!attribute unsubscribe_single_url
        #   A string containing the URL to unsubscribe the subscriber from a single
        #   communication.
        #
        #   @return [String, nil]
        optional :unsubscribe_single_url, String, api_name: :unsubscribeSingleUrl

        # @!method initialize(manage_preferences_url:, subscriber_id_string:, unsubscribe_all_url:, unsubscribe_single_url: nil)
        #   Some parameter documentations has been truncated, see
        #   {HubspotSDK::Models::CommunicationPreferences::LinkGenerationResponse} for more
        #   details.
        #
        #   @param manage_preferences_url [String] The URL where the subscriber can manage their communication preferences.
        #
        #   @param subscriber_id_string [String] A string representing the unique identifier of the subscriber.
        #
        #   @param unsubscribe_all_url [String] A string containing the URL for unsubscribing the subscriber from all communicat
        #
        #   @param unsubscribe_single_url [String] A string containing the URL to unsubscribe the subscriber from a single communic
      end
    end
  end
end
