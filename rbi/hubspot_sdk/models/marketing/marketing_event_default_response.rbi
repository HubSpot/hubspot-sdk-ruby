# typed: strong

module HubspotSDK
  module Models
    module Marketing
      class MarketingEventDefaultResponse < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Marketing::MarketingEventDefaultResponse,
              HubspotSDK::Internal::AnyHash
            )
          end

        # The name of the marketing event.
        sig { returns(String) }
        attr_accessor :event_name

        # The name of the organizer of the marketing event.
        sig { returns(String) }
        attr_accessor :event_organizer

        # A list of PropertyValues. These can be whatever kind of property names and
        # values you want. However, they must already exist on the HubSpot account's
        # definition of the MarketingEvent Object. If they don't they will be filtered out
        # and not set. In order to do this you'll need to create a new PropertyGroup on
        # the HubSpot account's MarketingEvent object for your specific app and create the
        # Custom Property you want to track on that HubSpot account. Do not create any new
        # default properties on the MarketingEvent object as that will apply to all
        # HubSpot accounts.
        sig do
          returns(T.nilable(T::Array[HubspotSDK::Marketing::PropertyValue]))
        end
        attr_reader :custom_properties

        sig do
          params(
            custom_properties:
              T::Array[HubspotSDK::Marketing::PropertyValue::OrHash]
          ).void
        end
        attr_writer :custom_properties

        # The end date and time of the marketing event.
        sig { returns(T.nilable(Time)) }
        attr_reader :end_date_time

        sig { params(end_date_time: Time).void }
        attr_writer :end_date_time

        # Indicates if the marketing event has been cancelled.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :event_cancelled

        sig { params(event_cancelled: T::Boolean).void }
        attr_writer :event_cancelled

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :event_completed

        sig { params(event_completed: T::Boolean).void }
        attr_writer :event_completed

        # The description of the marketing event.
        sig { returns(T.nilable(String)) }
        attr_reader :event_description

        sig { params(event_description: String).void }
        attr_writer :event_description

        # The type of the marketing event.
        sig { returns(T.nilable(String)) }
        attr_reader :event_type

        sig { params(event_type: String).void }
        attr_writer :event_type

        # The URL in the external event application where the marketing event can be
        # managed.
        sig { returns(T.nilable(String)) }
        attr_reader :event_url

        sig { params(event_url: String).void }
        attr_writer :event_url

        sig { returns(T.nilable(String)) }
        attr_reader :object_id_

        sig { params(object_id_: String).void }
        attr_writer :object_id_

        # The start date and time of the marketing event.
        sig { returns(T.nilable(Time)) }
        attr_reader :start_date_time

        sig { params(start_date_time: Time).void }
        attr_writer :start_date_time

        sig do
          params(
            event_name: String,
            event_organizer: String,
            custom_properties:
              T::Array[HubspotSDK::Marketing::PropertyValue::OrHash],
            end_date_time: Time,
            event_cancelled: T::Boolean,
            event_completed: T::Boolean,
            event_description: String,
            event_type: String,
            event_url: String,
            object_id_: String,
            start_date_time: Time
          ).returns(T.attached_class)
        end
        def self.new(
          # The name of the marketing event.
          event_name:,
          # The name of the organizer of the marketing event.
          event_organizer:,
          # A list of PropertyValues. These can be whatever kind of property names and
          # values you want. However, they must already exist on the HubSpot account's
          # definition of the MarketingEvent Object. If they don't they will be filtered out
          # and not set. In order to do this you'll need to create a new PropertyGroup on
          # the HubSpot account's MarketingEvent object for your specific app and create the
          # Custom Property you want to track on that HubSpot account. Do not create any new
          # default properties on the MarketingEvent object as that will apply to all
          # HubSpot accounts.
          custom_properties: nil,
          # The end date and time of the marketing event.
          end_date_time: nil,
          # Indicates if the marketing event has been cancelled.
          event_cancelled: nil,
          event_completed: nil,
          # The description of the marketing event.
          event_description: nil,
          # The type of the marketing event.
          event_type: nil,
          # The URL in the external event application where the marketing event can be
          # managed.
          event_url: nil,
          object_id_: nil,
          # The start date and time of the marketing event.
          start_date_time: nil
        )
        end

        sig do
          override.returns(
            {
              event_name: String,
              event_organizer: String,
              custom_properties: T::Array[HubspotSDK::Marketing::PropertyValue],
              end_date_time: Time,
              event_cancelled: T::Boolean,
              event_completed: T::Boolean,
              event_description: String,
              event_type: String,
              event_url: String,
              object_id_: String,
              start_date_time: Time
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
