# typed: strong

module HubSpotSDK
  module Models
    module Scheduler
      class ExternalClosedRange < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Scheduler::ExternalClosedRange,
              HubSpotSDK::Internal::AnyHash
            )
          end

        # The end value of the closed range, represented as an integer.
        sig { returns(Integer) }
        attr_accessor :end_

        # The start value of the closed range, represented as an integer.
        sig { returns(Integer) }
        attr_accessor :start

        sig { params(end_: Integer, start: Integer).returns(T.attached_class) }
        def self.new(
          # The end value of the closed range, represented as an integer.
          end_:,
          # The start value of the closed range, represented as an integer.
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
