# typed: strong

module HubspotSDK
  module Models
    MarketingEventPublicDefaultResponseV2 =
      Marketing::MarketingEventPublicDefaultResponseV2

    module Marketing
      class MarketingEventPublicDefaultResponseV2 < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Marketing::MarketingEventPublicDefaultResponseV2,
              HubspotSDK::Internal::AnyHash
            )
          end

        # The creation date and time of the marketing event
        sig { returns(Time) }
        attr_accessor :created_at

        sig { returns(T::Array[HubspotSDK::Marketing::CrmPropertyWrapper]) }
        attr_accessor :custom_properties

        # The name of the marketing event
        sig { returns(String) }
        attr_accessor :event_name

        # The internal ID of the marketing event in HubSpot
        sig { returns(String) }
        attr_accessor :object_id_

        # The update date and time of the marketing event
        sig { returns(Time) }
        attr_accessor :updated_at

        sig { returns(T.nilable(HubspotSDK::Marketing::AppInfo)) }
        attr_reader :app_info

        sig { params(app_info: HubspotSDK::Marketing::AppInfo::OrHash).void }
        attr_writer :app_info

        # The end date and time of the marketing event
        sig { returns(T.nilable(Time)) }
        attr_reader :end_date_time

        sig { params(end_date_time: Time).void }
        attr_writer :end_date_time

        # Indicates if the marketing event has been cancelled
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :event_cancelled

        sig { params(event_cancelled: T::Boolean).void }
        attr_writer :event_cancelled

        # Indicates if the marketing event has been completed
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :event_completed

        sig { params(event_completed: T::Boolean).void }
        attr_writer :event_completed

        # The description of the marketing event
        sig { returns(T.nilable(String)) }
        attr_reader :event_description

        sig { params(event_description: String).void }
        attr_writer :event_description

        # The name of the organizer of the marketing event
        sig { returns(T.nilable(String)) }
        attr_reader :event_organizer

        sig { params(event_organizer: String).void }
        attr_writer :event_organizer

        # The type of the marketing event
        sig { returns(T.nilable(String)) }
        attr_reader :event_type

        sig { params(event_type: String).void }
        attr_writer :event_type

        # A URL in the external event application where the marketing event can be managed
        sig { returns(T.nilable(String)) }
        attr_reader :event_url

        sig { params(event_url: String).void }
        attr_writer :event_url

        # The start date and time of the marketing event
        sig { returns(T.nilable(Time)) }
        attr_reader :start_date_time

        sig { params(start_date_time: Time).void }
        attr_writer :start_date_time

        sig do
          params(
            created_at: Time,
            custom_properties:
              T::Array[HubspotSDK::Marketing::CrmPropertyWrapper::OrHash],
            event_name: String,
            object_id_: String,
            updated_at: Time,
            app_info: HubspotSDK::Marketing::AppInfo::OrHash,
            end_date_time: Time,
            event_cancelled: T::Boolean,
            event_completed: T::Boolean,
            event_description: String,
            event_organizer: String,
            event_type: String,
            event_url: String,
            start_date_time: Time
          ).returns(T.attached_class)
        end
        def self.new(
          # The creation date and time of the marketing event
          created_at:,
          custom_properties:,
          # The name of the marketing event
          event_name:,
          # The internal ID of the marketing event in HubSpot
          object_id_:,
          # The update date and time of the marketing event
          updated_at:,
          app_info: nil,
          # The end date and time of the marketing event
          end_date_time: nil,
          # Indicates if the marketing event has been cancelled
          event_cancelled: nil,
          # Indicates if the marketing event has been completed
          event_completed: nil,
          # The description of the marketing event
          event_description: nil,
          # The name of the organizer of the marketing event
          event_organizer: nil,
          # The type of the marketing event
          event_type: nil,
          # A URL in the external event application where the marketing event can be managed
          event_url: nil,
          # The start date and time of the marketing event
          start_date_time: nil
        )
        end

        sig do
          override.returns(
            {
              created_at: Time,
              custom_properties:
                T::Array[HubspotSDK::Marketing::CrmPropertyWrapper],
              event_name: String,
              object_id_: String,
              updated_at: Time,
              app_info: HubspotSDK::Marketing::AppInfo,
              end_date_time: Time,
              event_cancelled: T::Boolean,
              event_completed: T::Boolean,
              event_description: String,
              event_organizer: String,
              event_type: String,
              event_url: String,
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
