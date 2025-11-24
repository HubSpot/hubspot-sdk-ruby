# typed: strong

module HubspotSDK
  module Models
    module Automation
      class APITimeWindow < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Automation::APITimeWindow,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(HubspotSDK::Automation::APITimeWindow::Day::OrSymbol) }
        attr_accessor :day

        sig { returns(T.nilable(HubspotSDK::Automation::APITimeOfDay)) }
        attr_reader :end_time

        sig do
          params(end_time: HubspotSDK::Automation::APITimeOfDay::OrHash).void
        end
        attr_writer :end_time

        sig { returns(T.nilable(HubspotSDK::Automation::APITimeOfDay)) }
        attr_reader :start_time

        sig do
          params(start_time: HubspotSDK::Automation::APITimeOfDay::OrHash).void
        end
        attr_writer :start_time

        sig do
          params(
            day: HubspotSDK::Automation::APITimeWindow::Day::OrSymbol,
            end_time: HubspotSDK::Automation::APITimeOfDay::OrHash,
            start_time: HubspotSDK::Automation::APITimeOfDay::OrHash
          ).returns(T.attached_class)
        end
        def self.new(day:, end_time: nil, start_time: nil)
        end

        sig do
          override.returns(
            {
              day: HubspotSDK::Automation::APITimeWindow::Day::OrSymbol,
              end_time: HubspotSDK::Automation::APITimeOfDay,
              start_time: HubspotSDK::Automation::APITimeOfDay
            }
          )
        end
        def to_hash
        end

        module Day
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, HubspotSDK::Automation::APITimeWindow::Day)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          FRIDAY =
            T.let(
              :FRIDAY,
              HubspotSDK::Automation::APITimeWindow::Day::TaggedSymbol
            )
          MONDAY =
            T.let(
              :MONDAY,
              HubspotSDK::Automation::APITimeWindow::Day::TaggedSymbol
            )
          SATURDAY =
            T.let(
              :SATURDAY,
              HubspotSDK::Automation::APITimeWindow::Day::TaggedSymbol
            )
          SUNDAY =
            T.let(
              :SUNDAY,
              HubspotSDK::Automation::APITimeWindow::Day::TaggedSymbol
            )
          THURSDAY =
            T.let(
              :THURSDAY,
              HubspotSDK::Automation::APITimeWindow::Day::TaggedSymbol
            )
          TUESDAY =
            T.let(
              :TUESDAY,
              HubspotSDK::Automation::APITimeWindow::Day::TaggedSymbol
            )
          WEDNESDAY =
            T.let(
              :WEDNESDAY,
              HubspotSDK::Automation::APITimeWindow::Day::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[HubspotSDK::Automation::APITimeWindow::Day::TaggedSymbol]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
