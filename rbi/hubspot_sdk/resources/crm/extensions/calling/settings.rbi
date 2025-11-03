# typed: strong

module HubspotSDK
  module Resources
    class Crm
      class Extensions
        class Calling
          class Settings
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
              app_id,
              name:,
              url:,
              height: nil,
              is_ready: nil,
              supports_custom_objects: nil,
              supports_inbound_calling: nil,
              uses_calling_window: nil,
              uses_remote: nil,
              width: nil,
              request_options: {}
            )
            end

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
              app_id,
              height: nil,
              is_ready: nil,
              name: nil,
              supports_custom_objects: nil,
              supports_inbound_calling: nil,
              url: nil,
              uses_calling_window: nil,
              uses_remote: nil,
              width: nil,
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
              ).returns(HubspotSDK::Webhooks::SettingsResponse)
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
