# typed: strong

module HubspotSDK
  module Models
    module Crm
      class PublicIndexOffset < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Crm::PublicIndexOffset,
              HubspotSDK::Internal::AnyHash
            )
          end

        # The number of days to offset.
        sig { returns(T.nilable(Integer)) }
        attr_reader :days

        sig { params(days: Integer).void }
        attr_writer :days

        # The number of hours to offset.
        sig { returns(T.nilable(Integer)) }
        attr_reader :hours

        sig { params(hours: Integer).void }
        attr_writer :hours

        # The number of milliseconds to offset.
        sig { returns(T.nilable(Integer)) }
        attr_reader :milliseconds

        sig { params(milliseconds: Integer).void }
        attr_writer :milliseconds

        # The number of minutes to offset.
        sig { returns(T.nilable(Integer)) }
        attr_reader :minutes

        sig { params(minutes: Integer).void }
        attr_writer :minutes

        # The number of months to offset.
        sig { returns(T.nilable(Integer)) }
        attr_reader :months

        sig { params(months: Integer).void }
        attr_writer :months

        # The number of quarters to offset.
        sig { returns(T.nilable(Integer)) }
        attr_reader :quarters

        sig { params(quarters: Integer).void }
        attr_writer :quarters

        # The number of seconds to offset.
        sig { returns(T.nilable(Integer)) }
        attr_reader :seconds

        sig { params(seconds: Integer).void }
        attr_writer :seconds

        # The number of weeks to offset.
        sig { returns(T.nilable(Integer)) }
        attr_reader :weeks

        sig { params(weeks: Integer).void }
        attr_writer :weeks

        # The number of years to offset.
        sig { returns(T.nilable(Integer)) }
        attr_reader :years

        sig { params(years: Integer).void }
        attr_writer :years

        sig do
          params(
            days: Integer,
            hours: Integer,
            milliseconds: Integer,
            minutes: Integer,
            months: Integer,
            quarters: Integer,
            seconds: Integer,
            weeks: Integer,
            years: Integer
          ).returns(T.attached_class)
        end
        def self.new(
          # The number of days to offset.
          days: nil,
          # The number of hours to offset.
          hours: nil,
          # The number of milliseconds to offset.
          milliseconds: nil,
          # The number of minutes to offset.
          minutes: nil,
          # The number of months to offset.
          months: nil,
          # The number of quarters to offset.
          quarters: nil,
          # The number of seconds to offset.
          seconds: nil,
          # The number of weeks to offset.
          weeks: nil,
          # The number of years to offset.
          years: nil
        )
        end

        sig do
          override.returns(
            {
              days: Integer,
              hours: Integer,
              milliseconds: Integer,
              minutes: Integer,
              months: Integer,
              quarters: Integer,
              seconds: Integer,
              weeks: Integer,
              years: Integer
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
