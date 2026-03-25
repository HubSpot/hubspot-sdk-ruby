# typed: strong

module HubspotSDK
  module Models
    MarketingEventSubscriber = Marketing::MarketingEventSubscriber

    module Marketing
      class MarketingEventSubscriber < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Marketing::MarketingEventSubscriber,
              HubspotSDK::Internal::AnyHash
            )
          end

        # Timestamp in milliseconds at which the contact subscribed to the event.
        sig { returns(Integer) }
        attr_accessor :interaction_date_time

        # The key-value set of the properties of the contact
        sig { returns(T::Hash[Symbol, String]) }
        attr_accessor :properties

        # The ID of the contact in HubSpot
        sig { returns(Integer) }
        attr_accessor :vid

        sig do
          params(
            interaction_date_time: Integer,
            properties: T::Hash[Symbol, String],
            vid: Integer
          ).returns(T.attached_class)
        end
        def self.new(
          # Timestamp in milliseconds at which the contact subscribed to the event.
          interaction_date_time:,
          # The key-value set of the properties of the contact
          properties:,
          # The ID of the contact in HubSpot
          vid:
        )
        end

        sig do
          override.returns(
            {
              interaction_date_time: Integer,
              properties: T::Hash[Symbol, String],
              vid: Integer
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
