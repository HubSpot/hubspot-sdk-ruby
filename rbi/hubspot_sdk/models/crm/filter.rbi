# typed: strong

module HubspotSDK
  module Models
    module Crm
      class Filter < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(HubspotSDK::Crm::Filter, HubspotSDK::Internal::AnyHash)
          end

        # The comparison operator used in the filter, such as "EQ" or "GT".
        sig { returns(HubspotSDK::Crm::Filter::Operator::OrSymbol) }
        attr_accessor :operator

        # The name of the property to apply the filter to.
        sig { returns(String) }
        attr_accessor :property_name

        # The upper boundary value when using ranged-based filters.
        sig { returns(T.nilable(String)) }
        attr_reader :high_value

        sig { params(high_value: String).void }
        attr_writer :high_value

        # The value to match against the property.
        sig { returns(T.nilable(String)) }
        attr_reader :value

        sig { params(value: String).void }
        attr_writer :value

        # The values to match against the property.
        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :values

        sig { params(values: T::Array[String]).void }
        attr_writer :values

        # Defines a single condition for searching CRM objects, specifying the property to
        # filter on, the operator to use (such as equals, greater than, or contains), and
        # the value(s) to compare against.
        sig do
          params(
            operator: HubspotSDK::Crm::Filter::Operator::OrSymbol,
            property_name: String,
            high_value: String,
            value: String,
            values: T::Array[String]
          ).returns(T.attached_class)
        end
        def self.new(
          # The comparison operator used in the filter, such as "EQ" or "GT".
          operator:,
          # The name of the property to apply the filter to.
          property_name:,
          # The upper boundary value when using ranged-based filters.
          high_value: nil,
          # The value to match against the property.
          value: nil,
          # The values to match against the property.
          values: nil
        )
        end

        sig do
          override.returns(
            {
              operator: HubspotSDK::Crm::Filter::Operator::OrSymbol,
              property_name: String,
              high_value: String,
              value: String,
              values: T::Array[String]
            }
          )
        end
        def to_hash
        end

        # The comparison operator used in the filter, such as "EQ" or "GT".
        module Operator
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, HubspotSDK::Crm::Filter::Operator) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          BETWEEN =
            T.let(:BETWEEN, HubspotSDK::Crm::Filter::Operator::TaggedSymbol)
          CONTAINS_TOKEN =
            T.let(
              :CONTAINS_TOKEN,
              HubspotSDK::Crm::Filter::Operator::TaggedSymbol
            )
          EQ = T.let(:EQ, HubspotSDK::Crm::Filter::Operator::TaggedSymbol)
          GT = T.let(:GT, HubspotSDK::Crm::Filter::Operator::TaggedSymbol)
          GTE = T.let(:GTE, HubspotSDK::Crm::Filter::Operator::TaggedSymbol)
          HAS_PROPERTY =
            T.let(
              :HAS_PROPERTY,
              HubspotSDK::Crm::Filter::Operator::TaggedSymbol
            )
          IN = T.let(:IN, HubspotSDK::Crm::Filter::Operator::TaggedSymbol)
          LT = T.let(:LT, HubspotSDK::Crm::Filter::Operator::TaggedSymbol)
          LTE = T.let(:LTE, HubspotSDK::Crm::Filter::Operator::TaggedSymbol)
          NEQ = T.let(:NEQ, HubspotSDK::Crm::Filter::Operator::TaggedSymbol)
          NOT_CONTAINS_TOKEN =
            T.let(
              :NOT_CONTAINS_TOKEN,
              HubspotSDK::Crm::Filter::Operator::TaggedSymbol
            )
          NOT_HAS_PROPERTY =
            T.let(
              :NOT_HAS_PROPERTY,
              HubspotSDK::Crm::Filter::Operator::TaggedSymbol
            )
          NOT_IN =
            T.let(:NOT_IN, HubspotSDK::Crm::Filter::Operator::TaggedSymbol)

          sig do
            override.returns(
              T::Array[HubspotSDK::Crm::Filter::Operator::TaggedSymbol]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
