# typed: strong

module HubspotSDK
  module Models
    module Scheduler
      class ExternalTimeRange < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Scheduler::ExternalTimeRange,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(Integer) }
        attr_accessor :end_

        sig { returns(Integer) }
        attr_accessor :start

        sig { params(end_: Integer, start: Integer).returns(T.attached_class) }
        def self.new(end_:, start:)
        end

        sig { override.returns({ end_: Integer, start: Integer }) }
        def to_hash
        end
      end
    end
  end
end
