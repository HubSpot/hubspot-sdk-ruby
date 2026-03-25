# typed: strong

module HubspotSDK
  module Models
    module CommunicationPreferences
      class LinkGenerationResponse < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::CommunicationPreferences::LinkGenerationResponse,
              HubspotSDK::Internal::AnyHash
            )
          end

        # The URL where the subscriber can manage their communication preferences.
        sig { returns(String) }
        attr_accessor :manage_preferences_url

        # A string representing the unique identifier of the subscriber.
        sig { returns(String) }
        attr_accessor :subscriber_id_string

        # A string containing the URL for unsubscribing the subscriber from all
        # communications.
        sig { returns(String) }
        attr_accessor :unsubscribe_all_url

        # A string containing the URL to unsubscribe the subscriber from a single
        # communication.
        sig { returns(T.nilable(String)) }
        attr_reader :unsubscribe_single_url

        sig { params(unsubscribe_single_url: String).void }
        attr_writer :unsubscribe_single_url

        sig do
          params(
            manage_preferences_url: String,
            subscriber_id_string: String,
            unsubscribe_all_url: String,
            unsubscribe_single_url: String
          ).returns(T.attached_class)
        end
        def self.new(
          # The URL where the subscriber can manage their communication preferences.
          manage_preferences_url:,
          # A string representing the unique identifier of the subscriber.
          subscriber_id_string:,
          # A string containing the URL for unsubscribing the subscriber from all
          # communications.
          unsubscribe_all_url:,
          # A string containing the URL to unsubscribe the subscriber from a single
          # communication.
          unsubscribe_single_url: nil
        )
        end

        sig do
          override.returns(
            {
              manage_preferences_url: String,
              subscriber_id_string: String,
              unsubscribe_all_url: String,
              unsubscribe_single_url: String
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
