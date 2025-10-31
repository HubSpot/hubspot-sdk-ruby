# typed: strong

module HubspotSDK
  module Models
    module Marketing
      class DependentFieldFilter < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Marketing::DependentFieldFilter,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig do
          returns(
            HubspotSDK::Marketing::DependentFieldFilter::Operator::OrSymbol
          )
        end
        attr_accessor :operator

        sig { returns(String) }
        attr_accessor :range_end

        sig { returns(String) }
        attr_accessor :range_start

        sig { returns(String) }
        attr_accessor :value

        sig { returns(T::Array[String]) }
        attr_accessor :values

        # A condition based on customer input
        sig do
          params(
            operator:
              HubspotSDK::Marketing::DependentFieldFilter::Operator::OrSymbol,
            range_end: String,
            range_start: String,
            value: String,
            values: T::Array[String]
          ).returns(T.attached_class)
        end
        def self.new(operator:, range_end:, range_start:, value:, values:)
        end

        sig do
          override.returns(
            {
              operator:
                HubspotSDK::Marketing::DependentFieldFilter::Operator::OrSymbol,
              range_end: String,
              range_start: String,
              value: String,
              values: T::Array[String]
            }
          )
        end
        def to_hash
        end

        module Operator
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubspotSDK::Marketing::DependentFieldFilter::Operator
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          EQ =
            T.let(
              :eq,
              HubspotSDK::Marketing::DependentFieldFilter::Operator::TaggedSymbol
            )
          NEQ =
            T.let(
              :neq,
              HubspotSDK::Marketing::DependentFieldFilter::Operator::TaggedSymbol
            )
          CONTAINS =
            T.let(
              :contains,
              HubspotSDK::Marketing::DependentFieldFilter::Operator::TaggedSymbol
            )
          DOESNT_CONTAIN =
            T.let(
              :doesnt_contain,
              HubspotSDK::Marketing::DependentFieldFilter::Operator::TaggedSymbol
            )
          STR_STARTS_WITH =
            T.let(
              :str_starts_with,
              HubspotSDK::Marketing::DependentFieldFilter::Operator::TaggedSymbol
            )
          STR_ENDS_WITH =
            T.let(
              :str_ends_with,
              HubspotSDK::Marketing::DependentFieldFilter::Operator::TaggedSymbol
            )
          LT =
            T.let(
              :lt,
              HubspotSDK::Marketing::DependentFieldFilter::Operator::TaggedSymbol
            )
          LTE =
            T.let(
              :lte,
              HubspotSDK::Marketing::DependentFieldFilter::Operator::TaggedSymbol
            )
          GT =
            T.let(
              :gt,
              HubspotSDK::Marketing::DependentFieldFilter::Operator::TaggedSymbol
            )
          GTE =
            T.let(
              :gte,
              HubspotSDK::Marketing::DependentFieldFilter::Operator::TaggedSymbol
            )
          BETWEEN =
            T.let(
              :between,
              HubspotSDK::Marketing::DependentFieldFilter::Operator::TaggedSymbol
            )
          NOT_BETWEEN =
            T.let(
              :not_between,
              HubspotSDK::Marketing::DependentFieldFilter::Operator::TaggedSymbol
            )
          WITHIN_TIME_REVERSE =
            T.let(
              :within_time_reverse,
              HubspotSDK::Marketing::DependentFieldFilter::Operator::TaggedSymbol
            )
          WITHIN_TIME =
            T.let(
              :within_time,
              HubspotSDK::Marketing::DependentFieldFilter::Operator::TaggedSymbol
            )
          SET_ANY =
            T.let(
              :set_any,
              HubspotSDK::Marketing::DependentFieldFilter::Operator::TaggedSymbol
            )
          SET_NOT_ANY =
            T.let(
              :set_not_any,
              HubspotSDK::Marketing::DependentFieldFilter::Operator::TaggedSymbol
            )
          SET_ALL =
            T.let(
              :set_all,
              HubspotSDK::Marketing::DependentFieldFilter::Operator::TaggedSymbol
            )
          SET_NOT_ALL =
            T.let(
              :set_not_all,
              HubspotSDK::Marketing::DependentFieldFilter::Operator::TaggedSymbol
            )
          SET_EQ =
            T.let(
              :set_eq,
              HubspotSDK::Marketing::DependentFieldFilter::Operator::TaggedSymbol
            )
          SET_NEQ =
            T.let(
              :set_neq,
              HubspotSDK::Marketing::DependentFieldFilter::Operator::TaggedSymbol
            )
          IS_NOT_EMPTY =
            T.let(
              :is_not_empty,
              HubspotSDK::Marketing::DependentFieldFilter::Operator::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Marketing::DependentFieldFilter::Operator::TaggedSymbol
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
