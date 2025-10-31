# typed: strong

module HubspotSDK
  module Resources
    class CRM
      class Extensions
        class Calling
          class ChannelConnectionSettings
            # Configure
            # [channel connection settings](https://developers.hubspot.com/docs/guides/api/crm/extensions/third-party-calling#create-channel-connection-settings)
            # for the app.
            sig do
              params(
                app_id: Integer,
                is_ready: T::Boolean,
                url: String,
                request_options: HubspotSDK::RequestOptions::OrHash
              ).returns(
                HubspotSDK::CRM::Extensions::ChannelConnectionSettingsResponse
              )
            end
            def create(
              # The ID of the app.
              app_id,
              # If true, this app will be considered to support channel connection
              is_ready:,
              # The URL to fetch phone numbers available for channel connection
              url:,
              request_options: {}
            )
            end

            # Update existing
            # [channel connection settings](https://developers.hubspot.com/docs/guides/api/crm/extensions/third-party-calling#manage-the-webhook-settings-for-channel-connection)
            # for your app.
            sig do
              params(
                app_id: Integer,
                is_ready: T::Boolean,
                url: String,
                request_options: HubspotSDK::RequestOptions::OrHash
              ).returns(
                HubspotSDK::CRM::Extensions::ChannelConnectionSettingsResponse
              )
            end
            def update(
              # The ID of the app.
              app_id,
              # If true, this app will be considered to support channel connection
              is_ready: nil,
              # The URL to fetch phone numbers available for channel connection
              url: nil,
              request_options: {}
            )
            end

            # Delete the
            # [channel connection settings](https://developers.hubspot.com/docs/guides/api/crm/extensions/third-party-calling#delete-existing-channel-connection-settings)
            # for the app.
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

            # Retrieve the settings related to the app's
            # [channel connection](https://developers.hubspot.com/docs/guides/api/crm/extensions/third-party-calling#fetch-existing-channel-connection-settings).
            sig do
              params(
                app_id: Integer,
                request_options: HubspotSDK::RequestOptions::OrHash
              ).returns(
                HubspotSDK::CRM::Extensions::ChannelConnectionSettingsResponse
              )
            end
            def get(
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
  end
end
