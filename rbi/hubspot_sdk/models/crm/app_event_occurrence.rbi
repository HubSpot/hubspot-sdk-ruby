# typed: strong

module HubspotSDK
  module Models
    module Crm
      class AppEventOccurrence < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Crm::AppEventOccurrence,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :id

        sig { returns(String) }
        attr_accessor :event_type_name

        sig { returns(T::Hash[Symbol, String]) }
        attr_accessor :properties

        sig { returns(T.nilable(String)) }
        attr_reader :domain

        sig { params(domain: String).void }
        attr_writer :domain

        sig { returns(T.nilable(String)) }
        attr_reader :email

        sig { params(email: String).void }
        attr_writer :email

        sig { returns(T.nilable(T.anything)) }
        attr_reader :extra_data

        sig { params(extra_data: T.anything).void }
        attr_writer :extra_data

        sig { returns(T.nilable(String)) }
        attr_reader :object_id_

        sig { params(object_id_: String).void }
        attr_writer :object_id_

        sig { returns(T.nilable(String)) }
        attr_reader :object_type_fully_qualified_name

        sig { params(object_type_fully_qualified_name: String).void }
        attr_writer :object_type_fully_qualified_name

        sig { returns(T.nilable(HubspotSDK::Crm::TimelineEventIFrame)) }
        attr_reader :timeline_i_frame

        sig do
          params(
            timeline_i_frame: HubspotSDK::Crm::TimelineEventIFrame::OrHash
          ).void
        end
        attr_writer :timeline_i_frame

        sig { returns(T.nilable(Time)) }
        attr_reader :timestamp

        sig { params(timestamp: Time).void }
        attr_writer :timestamp

        sig { returns(T.nilable(String)) }
        attr_reader :utk

        sig { params(utk: String).void }
        attr_writer :utk

        sig do
          params(
            id: String,
            event_type_name: String,
            properties: T::Hash[Symbol, String],
            domain: String,
            email: String,
            extra_data: T.anything,
            object_id_: String,
            object_type_fully_qualified_name: String,
            timeline_i_frame: HubspotSDK::Crm::TimelineEventIFrame::OrHash,
            timestamp: Time,
            utk: String
          ).returns(T.attached_class)
        end
        def self.new(
          id:,
          event_type_name:,
          properties:,
          domain: nil,
          email: nil,
          extra_data: nil,
          object_id_: nil,
          object_type_fully_qualified_name: nil,
          timeline_i_frame: nil,
          timestamp: nil,
          utk: nil
        )
        end

        sig do
          override.returns(
            {
              id: String,
              event_type_name: String,
              properties: T::Hash[Symbol, String],
              domain: String,
              email: String,
              extra_data: T.anything,
              object_id_: String,
              object_type_fully_qualified_name: String,
              timeline_i_frame: HubspotSDK::Crm::TimelineEventIFrame,
              timestamp: Time,
              utk: String
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
