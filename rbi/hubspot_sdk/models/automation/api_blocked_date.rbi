# typed: strong

module HubspotSDK
  module Models
    module Automation
      class APIBlockedDate < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Automation::APIBlockedDate,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(Integer) }
        attr_accessor :day_of_month

        sig { returns(HubspotSDK::Automation::APIBlockedDate::Month::OrSymbol) }
        attr_accessor :month

        sig { returns(T.nilable(Integer)) }
        attr_reader :year

        sig { params(year: Integer).void }
        attr_writer :year

        sig do
          params(
            day_of_month: Integer,
            month: HubspotSDK::Automation::APIBlockedDate::Month::OrSymbol,
            year: Integer
          ).returns(T.attached_class)
        end
        def self.new(day_of_month:, month:, year: nil)
        end

        sig do
          override.returns(
            {
              day_of_month: Integer,
              month: HubspotSDK::Automation::APIBlockedDate::Month::OrSymbol,
              year: Integer
            }
          )
        end
        def to_hash
        end

        module Month
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, HubspotSDK::Automation::APIBlockedDate::Month)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          APRIL =
            T.let(
              :APRIL,
              HubspotSDK::Automation::APIBlockedDate::Month::TaggedSymbol
            )
          AUGUST =
            T.let(
              :AUGUST,
              HubspotSDK::Automation::APIBlockedDate::Month::TaggedSymbol
            )
          DECEMBER =
            T.let(
              :DECEMBER,
              HubspotSDK::Automation::APIBlockedDate::Month::TaggedSymbol
            )
          FEBRUARY =
            T.let(
              :FEBRUARY,
              HubspotSDK::Automation::APIBlockedDate::Month::TaggedSymbol
            )
          JANUARY =
            T.let(
              :JANUARY,
              HubspotSDK::Automation::APIBlockedDate::Month::TaggedSymbol
            )
          JULY =
            T.let(
              :JULY,
              HubspotSDK::Automation::APIBlockedDate::Month::TaggedSymbol
            )
          JUNE =
            T.let(
              :JUNE,
              HubspotSDK::Automation::APIBlockedDate::Month::TaggedSymbol
            )
          MARCH =
            T.let(
              :MARCH,
              HubspotSDK::Automation::APIBlockedDate::Month::TaggedSymbol
            )
          MAY =
            T.let(
              :MAY,
              HubspotSDK::Automation::APIBlockedDate::Month::TaggedSymbol
            )
          NOVEMBER =
            T.let(
              :NOVEMBER,
              HubspotSDK::Automation::APIBlockedDate::Month::TaggedSymbol
            )
          OCTOBER =
            T.let(
              :OCTOBER,
              HubspotSDK::Automation::APIBlockedDate::Month::TaggedSymbol
            )
          SEPTEMBER =
            T.let(
              :SEPTEMBER,
              HubspotSDK::Automation::APIBlockedDate::Month::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Automation::APIBlockedDate::Month::TaggedSymbol
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
