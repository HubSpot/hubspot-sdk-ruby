# typed: strong

module HubspotSDK
  module Resources
    class Webhooks
      class Settings
        # Update webhook settings for the specified app.
        sig do
          params(
            app_id: Integer,
            target_url: String,
            throttling: HubspotSDK::Webhooks::ThrottlingSettings::OrHash,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(HubspotSDK::Webhooks::SettingsResponse)
        end
        def update(
          # The ID of the app.
          app_id,
          # A publicly available URL for HubSpot to call where event payloads will be
          # delivered.
          target_url:,
          # Configuration details for webhook throttling.
          throttling:,
          request_options: {}
        )
        end

        # Retrieve the webhook settings for the specified app, including the webhook’s
        # target URL, throttle configuration, and create/update date.
        sig do
          params(
            app_id: Integer,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(HubspotSDK::Webhooks::SettingsResponse)
        end
        def list(
          # The ID of the app.
          app_id,
          request_options: {}
        )
        end

        # Delete the webhook settings for the specified app. Event subscriptions will not
        # be deleted, but will be paused until another webhook is created.
        sig do
          params(
            app_id: Integer,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).void
        end
        def delete(
          # The ID of the app.
          app_id,
          request_options: {}
        )
        end

        # @api private
        sig { params(client: HubspotSDK::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
