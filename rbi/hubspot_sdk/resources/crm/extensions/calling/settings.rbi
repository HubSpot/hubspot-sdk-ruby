# typed: strong

module HubspotSDK
  module Resources
    class CRM
      class Extensions
        class Calling
          class Settings
            # Set the menu label, target iframe URL, and dimensions for your calling
            # extension.
            sig do
              params(
                app_id: Integer,
                name: String,
                url: String,
                height: Integer,
                is_ready: T::Boolean,
                supports_custom_objects: T::Boolean,
                supports_inbound_calling: T::Boolean,
                uses_calling_window: T::Boolean,
                uses_remote: T::Boolean,
                width: Integer,
                request_options: HubspotSDK::RequestOptions::OrHash
              ).returns(HubspotSDK::Webhooks::SettingsResponse)
            end
            def create(
              # The ID of the app.
              app_id,
              # The name of your calling service to display to users.
              name:,
              # The URL to your phone/calling UI, built with the [Calling SDK](#).
              url:,
              # The target height of the iframe that will contain your phone/calling UI.
              height: nil,
              # When true, this indicates that your calling app is ready for production. Users
              # will be able to select your calling app as their provider and can then click to
              # dial within HubSpot.
              is_ready: nil,
              # When true, users will be able to click to dial from custom objects.
              supports_custom_objects: nil,
              # When true, this indicates that your calling app supports inbound calling within
              # HubSpot.
              supports_inbound_calling: nil,
              # When false, this indicates that your calling app does not require the use of the
              # separate calling window to hold the call connection.
              uses_calling_window: nil,
              # When false, this indicates that your calling app does not use the anchored
              # calling remote within the HubSpot app.
              uses_remote: nil,
              # The target width of the iframe that will contain your phone/calling UI.
              width: nil,
              request_options: {}
            )
            end

            # Update existing calling extension settings.
            sig do
              params(
                app_id: Integer,
                height: Integer,
                is_ready: T::Boolean,
                name: String,
                supports_custom_objects: T::Boolean,
                supports_inbound_calling: T::Boolean,
                url: String,
                uses_calling_window: T::Boolean,
                uses_remote: T::Boolean,
                width: Integer,
                request_options: HubspotSDK::RequestOptions::OrHash
              ).returns(HubspotSDK::Webhooks::SettingsResponse)
            end
            def update(
              # The ID of the app.
              app_id,
              # The target height of the iframe that will contain your phone/calling UI.
              height: nil,
              # When true, this indicates that your calling app is ready for production. Users
              # will be able to select your calling app as their provider and can then click to
              # dial within HubSpot.
              is_ready: nil,
              # The name of your calling service to display to users.
              name: nil,
              # When true, users will be able to click to dial from custom objects.
              supports_custom_objects: nil,
              # When true, this indicates that your calling app supports inbound calling within
              # HubSpot.
              supports_inbound_calling: nil,
              # The URL to your phone/calling UI, built with the [Calling SDK](#).
              url: nil,
              # When false, this indicates that your calling app does not require the use of the
              # separate calling window to hold the call connection.
              uses_calling_window: nil,
              # When false, this indicates that your calling app does not use the anchored
              # calling remote within the HubSpot app.
              uses_remote: nil,
              # The target width of the iframe that will contain your phone/calling UI.
              width: nil,
              request_options: {}
            )
            end

            # Delete a calling extension. This will remove your service as an option for all
            # connected accounts.
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

            # Retrieve the settings configured for the app.
            sig do
              params(
                app_id: Integer,
                request_options: HubspotSDK::RequestOptions::OrHash
              ).returns(HubspotSDK::Webhooks::SettingsResponse)
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
