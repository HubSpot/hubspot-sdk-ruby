# typed: strong

module HubspotSDK
  module Models
    module Events
      class MonthReference < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Events::MonthReference,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(Integer) }
        attr_accessor :day

        sig do
          returns(
            HubspotSDK::Events::MonthReference::ReferenceType::TaggedSymbol
          )
        end
        attr_accessor :reference_type

        sig { returns(T.nilable(Integer)) }
        attr_reader :hour

        sig { params(hour: Integer).void }
        attr_writer :hour

        sig { returns(T.nilable(Integer)) }
        attr_reader :millisecond

        sig { params(millisecond: Integer).void }
        attr_writer :millisecond

        sig { returns(T.nilable(Integer)) }
        attr_reader :minute

        sig { params(minute: Integer).void }
        attr_writer :minute

        sig { returns(T.nilable(Integer)) }
        attr_reader :second

        sig { params(second: Integer).void }
        attr_writer :second

        sig do
          params(
            day: Integer,
            reference_type:
              HubspotSDK::Events::MonthReference::ReferenceType::OrSymbol,
            hour: Integer,
            millisecond: Integer,
            minute: Integer,
            second: Integer
          ).returns(T.attached_class)
        end
        def self.new(
          day:,
          reference_type:,
          hour: nil,
          millisecond: nil,
          minute: nil,
          second: nil
        )
        end

        sig do
          override.returns(
            {
              day: Integer,
              reference_type:
                HubspotSDK::Events::MonthReference::ReferenceType::TaggedSymbol,
              hour: Integer,
              millisecond: Integer,
              minute: Integer,
              second: Integer
            }
          )
        end
        def to_hash
        end

        module ReferenceType
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, HubspotSDK::Events::MonthReference::ReferenceType)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          MONTH =
            T.let(
              :MONTH,
              HubspotSDK::Events::MonthReference::ReferenceType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Events::MonthReference::ReferenceType::TaggedSymbol
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
