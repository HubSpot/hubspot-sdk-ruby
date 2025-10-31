# typed: strong

module HubspotSDK
  module Models
    module Automation
      class APIStaticDateAnchor < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Automation::APIStaticDateAnchor,
              HubspotSDK::Internal::AnyHash
            )
          end

        # The day of the date to anchor on
        sig { returns(Integer) }
        attr_accessor :day_of_month

        # The month of the date to anchor on
        sig do
          returns(HubspotSDK::Automation::APIStaticDateAnchor::Month::OrSymbol)
        end
        attr_accessor :month

        # The type of event anchor this is, can be: "CONTACT_PROPERTY_ANCHOR" or
        # "STATIC_DATE_ANCHOR"
        sig do
          returns(HubspotSDK::Automation::APIStaticDateAnchor::Type::OrSymbol)
        end
        attr_accessor :type

        # The year of the date to anchor on. If this is not provided then this flow will
        # re-run each year.
        sig { returns(T.nilable(Integer)) }
        attr_reader :year

        sig { params(year: Integer).void }
        attr_writer :year

        sig do
          params(
            day_of_month: Integer,
            month: HubspotSDK::Automation::APIStaticDateAnchor::Month::OrSymbol,
            type: HubspotSDK::Automation::APIStaticDateAnchor::Type::OrSymbol,
            year: Integer
          ).returns(T.attached_class)
        end
        def self.new(
          # The day of the date to anchor on
          day_of_month:,
          # The month of the date to anchor on
          month:,
          # The type of event anchor this is, can be: "CONTACT_PROPERTY_ANCHOR" or
          # "STATIC_DATE_ANCHOR"
          type:,
          # The year of the date to anchor on. If this is not provided then this flow will
          # re-run each year.
          year: nil
        )
        end

        sig do
          override.returns(
            {
              day_of_month: Integer,
              month:
                HubspotSDK::Automation::APIStaticDateAnchor::Month::OrSymbol,
              type: HubspotSDK::Automation::APIStaticDateAnchor::Type::OrSymbol,
              year: Integer
            }
          )
        end
        def to_hash
        end

        # The month of the date to anchor on
        module Month
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, HubspotSDK::Automation::APIStaticDateAnchor::Month)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          JANUARY =
            T.let(
              :JANUARY,
              HubspotSDK::Automation::APIStaticDateAnchor::Month::TaggedSymbol
            )
          FEBRUARY =
            T.let(
              :FEBRUARY,
              HubspotSDK::Automation::APIStaticDateAnchor::Month::TaggedSymbol
            )
          MARCH =
            T.let(
              :MARCH,
              HubspotSDK::Automation::APIStaticDateAnchor::Month::TaggedSymbol
            )
          APRIL =
            T.let(
              :APRIL,
              HubspotSDK::Automation::APIStaticDateAnchor::Month::TaggedSymbol
            )
          MAY =
            T.let(
              :MAY,
              HubspotSDK::Automation::APIStaticDateAnchor::Month::TaggedSymbol
            )
          JUNE =
            T.let(
              :JUNE,
              HubspotSDK::Automation::APIStaticDateAnchor::Month::TaggedSymbol
            )
          JULY =
            T.let(
              :JULY,
              HubspotSDK::Automation::APIStaticDateAnchor::Month::TaggedSymbol
            )
          AUGUST =
            T.let(
              :AUGUST,
              HubspotSDK::Automation::APIStaticDateAnchor::Month::TaggedSymbol
            )
          SEPTEMBER =
            T.let(
              :SEPTEMBER,
              HubspotSDK::Automation::APIStaticDateAnchor::Month::TaggedSymbol
            )
          OCTOBER =
            T.let(
              :OCTOBER,
              HubspotSDK::Automation::APIStaticDateAnchor::Month::TaggedSymbol
            )
          NOVEMBER =
            T.let(
              :NOVEMBER,
              HubspotSDK::Automation::APIStaticDateAnchor::Month::TaggedSymbol
            )
          DECEMBER =
            T.let(
              :DECEMBER,
              HubspotSDK::Automation::APIStaticDateAnchor::Month::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Automation::APIStaticDateAnchor::Month::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # The type of event anchor this is, can be: "CONTACT_PROPERTY_ANCHOR" or
        # "STATIC_DATE_ANCHOR"
        module Type
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, HubspotSDK::Automation::APIStaticDateAnchor::Type)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          STATIC_DATE_ANCHOR =
            T.let(
              :STATIC_DATE_ANCHOR,
              HubspotSDK::Automation::APIStaticDateAnchor::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Automation::APIStaticDateAnchor::Type::TaggedSymbol
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
