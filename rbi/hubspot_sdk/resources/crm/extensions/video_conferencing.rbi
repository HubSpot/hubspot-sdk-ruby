# typed: strong

module HubSpotSDK
  module Resources
    class Crm
      class Extensions
        class VideoConferencing
          # Create or update video conference extension settings for your app
          sig do
            params(
              app_id: Integer,
              create_meeting_url: String,
              delete_meeting_url: String,
              fetch_accounts_uri: String,
              update_meeting_url: String,
              user_verify_url: String,
              request_options: HubSpotSDK::RequestOptions::OrHash
            ).returns(HubSpotSDK::Crm::Extensions::ExternalSettings)
          end
          def update(
            app_id,
            create_meeting_url:,
            delete_meeting_url: nil,
            fetch_accounts_uri: nil,
            update_meeting_url: nil,
            user_verify_url: nil,
            request_options: {}
          )
          end

          # Delete video conference extension settings for your app
          sig do
            params(
              app_id: Integer,
              request_options: HubSpotSDK::RequestOptions::OrHash
            ).void
          end
          def delete(app_id, request_options: {})
          end

          # Fetch video conference extension settings for your app
          sig do
            params(
              app_id: Integer,
              request_options: HubSpotSDK::RequestOptions::OrHash
            ).returns(HubSpotSDK::Crm::Extensions::ExternalSettings)
          end
          def get(app_id, request_options: {})
          end

          # @api private
          sig { params(client: HubSpotSDK::Client).returns(T.attached_class) }
          def self.new(client:)
          end
        end
      end
    end
  end
end
