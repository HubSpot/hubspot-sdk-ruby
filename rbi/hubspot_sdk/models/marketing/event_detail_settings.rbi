# typed: strong

module HubSpotSDK
  module Models
    module Marketing
      class EventDetailSettings < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Marketing::EventDetailSettings,
              HubSpotSDK::Internal::AnyHash
            )
          end

        # The id of the application the settings are for
        sig { returns(Integer) }
        attr_accessor :app_id

        # The url that will be used to fetch marketing event details by id
        sig { returns(String) }
        attr_accessor :event_details_url

        sig do
          params(app_id: Integer, event_details_url: String).returns(
            T.attached_class
          )
        end
        def self.new(
          # The id of the application the settings are for
          app_id:,
          # The url that will be used to fetch marketing event details by id
          event_details_url:
        )
        end

        sig { override.returns({ app_id: Integer, event_details_url: String }) }
        def to_hash
        end
      end
    end
  end
end
