# typed: strong

module HubspotSDK
  module Models
    module Automation
      class APIPropertyBasedEnrollmentSchedule < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Automation::APIPropertyBasedEnrollmentSchedule,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :date_property

        sig { returns(Integer) }
        attr_accessor :days_delta

        sig { returns(HubspotSDK::Automation::APITimeOfDay) }
        attr_reader :time_of_day

        sig do
          params(time_of_day: HubspotSDK::Automation::APITimeOfDay::OrHash).void
        end
        attr_writer :time_of_day

        sig do
          returns(
            HubspotSDK::Automation::APIPropertyBasedEnrollmentSchedule::Type::OrSymbol
          )
        end
        attr_accessor :type

        sig { returns(T::Boolean) }
        attr_accessor :yearly

        sig do
          params(
            date_property: String,
            days_delta: Integer,
            time_of_day: HubspotSDK::Automation::APITimeOfDay::OrHash,
            type:
              HubspotSDK::Automation::APIPropertyBasedEnrollmentSchedule::Type::OrSymbol,
            yearly: T::Boolean
          ).returns(T.attached_class)
        end
        def self.new(date_property:, days_delta:, time_of_day:, type:, yearly:)
        end

        sig do
          override.returns(
            {
              date_property: String,
              days_delta: Integer,
              time_of_day: HubspotSDK::Automation::APITimeOfDay,
              type:
                HubspotSDK::Automation::APIPropertyBasedEnrollmentSchedule::Type::OrSymbol,
              yearly: T::Boolean
            }
          )
        end
        def to_hash
        end

        module Type
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubspotSDK::Automation::APIPropertyBasedEnrollmentSchedule::Type
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          PROPERTY_BASED =
            T.let(
              :PROPERTY_BASED,
              HubspotSDK::Automation::APIPropertyBasedEnrollmentSchedule::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Automation::APIPropertyBasedEnrollmentSchedule::Type::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
