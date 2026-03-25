# typed: strong

module HubspotSDK
  module Models
    module Events
      class DatePropertyOperation < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Events::DatePropertyOperation,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(Integer) }
        attr_accessor :day

        sig { returns(T::Boolean) }
        attr_accessor :include_objects_with_no_value_set

        sig do
          returns(
            HubspotSDK::Events::DatePropertyOperation::Month::TaggedSymbol
          )
        end
        attr_accessor :month

        sig { returns(String) }
        attr_accessor :operation_type

        sig do
          returns(
            HubspotSDK::Events::DatePropertyOperation::Operator::TaggedSymbol
          )
        end
        attr_accessor :operator

        sig { returns(String) }
        attr_accessor :operator_name

        sig do
          returns(
            HubspotSDK::Events::DatePropertyOperation::PropertyType::TaggedSymbol
          )
        end
        attr_accessor :property_type

        sig { returns(Integer) }
        attr_accessor :year

        sig { returns(T.nilable(String)) }
        attr_reader :default_value

        sig { params(default_value: String).void }
        attr_writer :default_value

        sig { returns(T.nilable(String)) }
        attr_reader :render_spec

        sig { params(render_spec: String).void }
        attr_writer :render_spec

        sig do
          params(
            day: Integer,
            include_objects_with_no_value_set: T::Boolean,
            month: HubspotSDK::Events::DatePropertyOperation::Month::OrSymbol,
            operation_type: String,
            operator:
              HubspotSDK::Events::DatePropertyOperation::Operator::OrSymbol,
            operator_name: String,
            property_type:
              HubspotSDK::Events::DatePropertyOperation::PropertyType::OrSymbol,
            year: Integer,
            default_value: String,
            render_spec: String
          ).returns(T.attached_class)
        end
        def self.new(
          day:,
          include_objects_with_no_value_set:,
          month:,
          operation_type:,
          operator:,
          operator_name:,
          property_type:,
          year:,
          default_value: nil,
          render_spec: nil
        )
        end

        sig do
          override.returns(
            {
              day: Integer,
              include_objects_with_no_value_set: T::Boolean,
              month:
                HubspotSDK::Events::DatePropertyOperation::Month::TaggedSymbol,
              operation_type: String,
              operator:
                HubspotSDK::Events::DatePropertyOperation::Operator::TaggedSymbol,
              operator_name: String,
              property_type:
                HubspotSDK::Events::DatePropertyOperation::PropertyType::TaggedSymbol,
              year: Integer,
              default_value: String,
              render_spec: String
            }
          )
        end
        def to_hash
        end

        module Month
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, HubspotSDK::Events::DatePropertyOperation::Month)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          APR =
            T.let(
              :APR,
              HubspotSDK::Events::DatePropertyOperation::Month::TaggedSymbol
            )
          AUG =
            T.let(
              :AUG,
              HubspotSDK::Events::DatePropertyOperation::Month::TaggedSymbol
            )
          DEC =
            T.let(
              :DEC,
              HubspotSDK::Events::DatePropertyOperation::Month::TaggedSymbol
            )
          FEB =
            T.let(
              :FEB,
              HubspotSDK::Events::DatePropertyOperation::Month::TaggedSymbol
            )
          JAN =
            T.let(
              :JAN,
              HubspotSDK::Events::DatePropertyOperation::Month::TaggedSymbol
            )
          JUL =
            T.let(
              :JUL,
              HubspotSDK::Events::DatePropertyOperation::Month::TaggedSymbol
            )
          JUN =
            T.let(
              :JUN,
              HubspotSDK::Events::DatePropertyOperation::Month::TaggedSymbol
            )
          MAR =
            T.let(
              :MAR,
              HubspotSDK::Events::DatePropertyOperation::Month::TaggedSymbol
            )
          MAY =
            T.let(
              :MAY,
              HubspotSDK::Events::DatePropertyOperation::Month::TaggedSymbol
            )
          NOV =
            T.let(
              :NOV,
              HubspotSDK::Events::DatePropertyOperation::Month::TaggedSymbol
            )
          OCT =
            T.let(
              :OCT,
              HubspotSDK::Events::DatePropertyOperation::Month::TaggedSymbol
            )
          SEP =
            T.let(
              :SEP,
              HubspotSDK::Events::DatePropertyOperation::Month::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Events::DatePropertyOperation::Month::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        module Operator
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, HubspotSDK::Events::DatePropertyOperation::Operator)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          AFTER =
            T.let(
              :AFTER,
              HubspotSDK::Events::DatePropertyOperation::Operator::TaggedSymbol
            )
          BEFORE =
            T.let(
              :BEFORE,
              HubspotSDK::Events::DatePropertyOperation::Operator::TaggedSymbol
            )
          EQUAL =
            T.let(
              :EQUAL,
              HubspotSDK::Events::DatePropertyOperation::Operator::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Events::DatePropertyOperation::Operator::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        module PropertyType
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubspotSDK::Events::DatePropertyOperation::PropertyType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          DATE =
            T.let(
              :date,
              HubspotSDK::Events::DatePropertyOperation::PropertyType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Events::DatePropertyOperation::PropertyType::TaggedSymbol
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
