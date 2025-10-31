# typed: strong

module HubspotSDK
  module Resources
    class Marketing
      class Events
        class Settings
          # Create or update the current settings for the application.
          sig do
            params(
              app_id: Integer,
              event_details_url: String,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(HubspotSDK::Marketing::EventDetailSettings)
          end
          def create_or_update(
            # The id of the application to update the settings for.
            app_id,
            # The url that will be used to fetch marketing event details by id. Must contain a
            # `%s` character sequence that will be substituted with the event id. For example:
            # `https://my.event.app/events/%s`
            event_details_url:,
            request_options: {}
          )
          end

          # Retrieve the current settings for the application.
          sig do
            params(
              app_id: Integer,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(HubspotSDK::Marketing::EventDetailSettings)
          end
          def get(
            # The id of the application to retrieve the settings for.
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
