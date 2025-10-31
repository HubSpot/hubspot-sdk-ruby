# typed: strong

module HubspotSDK
  module Resources
    class CRM
      class Extensions
        class Calling
          class ChannelConnectionSettings
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
            def create(app_id, is_ready:, url:, request_options: {})
            end

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
            def update(app_id, is_ready: nil, url: nil, request_options: {})
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
              ).returns(
                HubspotSDK::CRM::Extensions::ChannelConnectionSettingsResponse
              )
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
