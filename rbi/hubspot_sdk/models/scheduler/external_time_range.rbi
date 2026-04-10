# typed: strong

module HubSpotSDK
  module Models
    module Scheduler
      class ExternalTimeRange < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Scheduler::ExternalTimeRange,
              HubSpotSDK::Internal::AnyHash
            )
          end

        # The end time of the time range, represented as Unix time in milliseconds.
        sig { returns(Integer) }
        attr_accessor :end_

        # The start time of the time range, represented as Unix time in milliseconds.
        sig { returns(Integer) }
        attr_accessor :start

        sig { params(end_: Integer, start: Integer).returns(T.attached_class) }
        def self.new(
          # The end time of the time range, represented as Unix time in milliseconds.
          end_:,
          # The start time of the time range, represented as Unix time in milliseconds.
          start:
        )
        end

        sig { override.returns({ end_: Integer, start: Integer }) }
        def to_hash
        end
      end
    end
  end
end
