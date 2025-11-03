# typed: strong

module HubspotSDK
  module Models
    module Crm
      module Extensions
        class ExternalSettings < HubspotSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                HubspotSDK::Crm::Extensions::ExternalSettings,
                HubspotSDK::Internal::AnyHash
              )
            end

          # The URL that HubSpot will send requests to create a new video conference.
          sig { returns(String) }
          attr_accessor :create_meeting_url

          # The URL that HubSpot will send notifications of meetings that have been deleted
          # in HubSpot.
          sig { returns(T.nilable(String)) }
          attr_reader :delete_meeting_url

          sig { params(delete_meeting_url: String).void }
          attr_writer :delete_meeting_url

          sig { returns(T.nilable(String)) }
          attr_reader :fetch_accounts_uri

          sig { params(fetch_accounts_uri: String).void }
          attr_writer :fetch_accounts_uri

          # The URL that HubSpot will send updates to existing meetings. Typically called
          # when the user changes the topic or times of a meeting.
          sig { returns(T.nilable(String)) }
          attr_reader :update_meeting_url

          sig { params(update_meeting_url: String).void }
          attr_writer :update_meeting_url

          # The URL that HubSpot will use to verify that a user exists in the video
          # conference application.
          sig { returns(T.nilable(String)) }
          attr_reader :user_verify_url

          sig { params(user_verify_url: String).void }
          attr_writer :user_verify_url

          # The URLs of the various actions provided by the video conferencing application.
          # All URLs must use the `https` protocol.
          sig do
            params(
              create_meeting_url: String,
              delete_meeting_url: String,
              fetch_accounts_uri: String,
              update_meeting_url: String,
              user_verify_url: String
            ).returns(T.attached_class)
          end
          def self.new(
            # The URL that HubSpot will send requests to create a new video conference.
            create_meeting_url:,
            # The URL that HubSpot will send notifications of meetings that have been deleted
            # in HubSpot.
            delete_meeting_url: nil,
            fetch_accounts_uri: nil,
            # The URL that HubSpot will send updates to existing meetings. Typically called
            # when the user changes the topic or times of a meeting.
            update_meeting_url: nil,
            # The URL that HubSpot will use to verify that a user exists in the video
            # conference application.
            user_verify_url: nil
          )
          end

          sig do
            override.returns(
              {
                create_meeting_url: String,
                delete_meeting_url: String,
                fetch_accounts_uri: String,
                update_meeting_url: String,
                user_verify_url: String
              }
            )
          end
          def to_hash
          end
        end
      end
    end
  end
end
