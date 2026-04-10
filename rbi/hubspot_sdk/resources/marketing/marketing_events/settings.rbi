# typed: strong

module HubSpotSDK
  module Resources
    class Marketing
      class MarketingEvents
        class Settings
          # Create or update the current settings for the application.
          sig do
            params(
              app_id: Integer,
              event_details_url: String,
              request_options: HubSpotSDK::RequestOptions::OrHash
            ).returns(HubSpotSDK::Marketing::EventDetailSettings)
          end
          def create_or_update(
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
              request_options: HubSpotSDK::RequestOptions::OrHash
            ).returns(HubSpotSDK::Marketing::EventDetailSettings)
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
