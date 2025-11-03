# typed: strong

module HubspotSDK
  module Resources
    class Crm
      class Extensions
        class VideoConferencing
          class Settings
            sig do
              params(
                app_id: Integer,
                create_meeting_url: String,
                delete_meeting_url: String,
                fetch_accounts_uri: String,
                update_meeting_url: String,
                user_verify_url: String,
                request_options: HubspotSDK::RequestOptions::OrHash
              ).returns(HubspotSDK::Crm::Extensions::ExternalSettings)
            end
            def update(
              app_id,
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
              user_verify_url: nil,
              request_options: {}
            )
            end

            sig do
              params(
                app_id: Integer,
                request_options: HubspotSDK::RequestOptions::OrHash
              ).void
            end
            def delete(app_id, request_options: {})
            end

            sig do
              params(
                app_id: Integer,
                request_options: HubspotSDK::RequestOptions::OrHash
              ).returns(HubspotSDK::Crm::Extensions::ExternalSettings)
            end
            def get(app_id, request_options: {})
            end

            # @api private
            sig { params(client: HubspotSDK::Client).returns(T.attached_class) }
            def self.new(client:)
            end
          end
        end
      end
    end
  end
end
