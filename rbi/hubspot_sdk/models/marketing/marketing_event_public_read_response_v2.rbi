# typed: strong

module HubspotSDK
  module Models
    MarketingEventPublicReadResponseV2 =
      Marketing::MarketingEventPublicReadResponseV2

    module Marketing
      class MarketingEventPublicReadResponseV2 < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Marketing::MarketingEventPublicReadResponseV2,
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

        # Number of attended contact records of a marketing event
        sig { returns(T.nilable(Integer)) }
        attr_reader :attendees

        sig { params(attendees: Integer).void }
        attr_writer :attendees

        # Number of cancelled contact records of a marketing event
        sig { returns(T.nilable(Integer)) }
        attr_reader :cancellations

        sig { params(cancellations: Integer).void }
        attr_writer :cancellations

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

        # The status of the marketing event
        sig { returns(T.nilable(String)) }
        attr_reader :event_status

        sig { params(event_status: String).void }
        attr_writer :event_status

        sig { returns(T.nilable(String)) }
        attr_reader :event_status_v2

        sig { params(event_status_v2: String).void }
        attr_writer :event_status_v2

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

        # The ID that is associated with this marketing event in the external event
        # application
        sig { returns(T.nilable(String)) }
        attr_reader :external_event_id

        sig { params(external_event_id: String).void }
        attr_writer :external_event_id

        # Number of no-show contact records of a marketing event
        sig { returns(T.nilable(Integer)) }
        attr_reader :no_shows

        sig { params(no_shows: Integer).void }
        attr_writer :no_shows

        # Number of registered contact records of a marketing event
        sig { returns(T.nilable(Integer)) }
        attr_reader :registrants

        sig { params(registrants: Integer).void }
        attr_writer :registrants

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
            attendees: Integer,
            cancellations: Integer,
            end_date_time: Time,
            event_cancelled: T::Boolean,
            event_completed: T::Boolean,
            event_description: String,
            event_organizer: String,
            event_status: String,
            event_status_v2: String,
            event_type: String,
            event_url: String,
            external_event_id: String,
            no_shows: Integer,
            registrants: Integer,
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
          # Number of attended contact records of a marketing event
          attendees: nil,
          # Number of cancelled contact records of a marketing event
          cancellations: nil,
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
          # The status of the marketing event
          event_status: nil,
          event_status_v2: nil,
          # The type of the marketing event
          event_type: nil,
          # A URL in the external event application where the marketing event can be managed
          event_url: nil,
          # The ID that is associated with this marketing event in the external event
          # application
          external_event_id: nil,
          # Number of no-show contact records of a marketing event
          no_shows: nil,
          # Number of registered contact records of a marketing event
          registrants: nil,
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
              attendees: Integer,
              cancellations: Integer,
              end_date_time: Time,
              event_cancelled: T::Boolean,
              event_completed: T::Boolean,
              event_description: String,
              event_organizer: String,
              event_status: String,
              event_status_v2: String,
              event_type: String,
              event_url: String,
              external_event_id: String,
              no_shows: Integer,
              registrants: Integer,
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
