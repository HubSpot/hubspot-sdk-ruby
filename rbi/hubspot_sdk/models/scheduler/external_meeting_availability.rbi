# typed: strong

module HubspotSDK
  module Models
    module Scheduler
      class ExternalMeetingAvailability < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Scheduler::ExternalMeetingAvailability,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(Integer) }
        attr_accessor :end_millis_utc

        sig { returns(Integer) }
        attr_accessor :start_millis_utc

        sig do
          params(end_millis_utc: Integer, start_millis_utc: Integer).returns(
            T.attached_class
          )
        end
        def self.new(end_millis_utc:, start_millis_utc:)
        end

        sig do
          override.returns(
            { end_millis_utc: Integer, start_millis_utc: Integer }
          )
        end
        def to_hash
        end
      end
    end
  end
end
