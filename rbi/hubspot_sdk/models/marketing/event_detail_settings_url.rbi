# typed: strong

module HubspotSDK
  module Models
    module Marketing
      class EventDetailSettingsURL < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Marketing::EventDetailSettingsURL,
              HubspotSDK::Internal::AnyHash
            )
          end

        # The url that will be used to fetch marketing event details by id. Must contain a
        # `%s` character sequence that will be substituted with the event id. For example:
        # `https://my.event.app/events/%s`
        sig { returns(String) }
        attr_accessor :event_details_url

        sig { params(event_details_url: String).returns(T.attached_class) }
        def self.new(
          # The url that will be used to fetch marketing event details by id. Must contain a
          # `%s` character sequence that will be substituted with the event id. For example:
          # `https://my.event.app/events/%s`
          event_details_url:
        )
        end

        sig { override.returns({ event_details_url: String }) }
        def to_hash
        end
      end
    end
  end
end
