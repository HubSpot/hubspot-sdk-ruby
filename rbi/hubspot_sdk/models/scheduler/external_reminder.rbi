# typed: strong

module HubspotSDK
  module Models
    module Scheduler
      class ExternalReminder < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Scheduler::ExternalReminder,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(Integer) }
        attr_accessor :number_of_time_units

        sig { returns(String) }
        attr_accessor :time_unit

        sig do
          params(number_of_time_units: Integer, time_unit: String).returns(
            T.attached_class
          )
        end
        def self.new(number_of_time_units:, time_unit:)
        end

        sig do
          override.returns({ number_of_time_units: Integer, time_unit: String })
        end
        def to_hash
        end
      end
    end
  end
end
