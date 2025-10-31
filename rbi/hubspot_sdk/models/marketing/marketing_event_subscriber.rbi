# typed: strong

module HubspotSDK
  module Models
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

        sig { returns(T.nilable(T::Hash[Symbol, String])) }
        attr_reader :properties

        sig { params(properties: T::Hash[Symbol, String]).void }
        attr_writer :properties

        sig { returns(T.nilable(Integer)) }
        attr_reader :vid

        sig { params(vid: Integer).void }
        attr_writer :vid

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
          properties: nil,
          vid: nil
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
