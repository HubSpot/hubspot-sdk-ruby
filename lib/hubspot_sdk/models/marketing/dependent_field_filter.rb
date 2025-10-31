# frozen_string_literal: true

module HubspotSDK
  module Models
    module Marketing
      class DependentFieldFilter < HubspotSDK::Internal::Type::BaseModel
        # @!attribute operator
        #
        #   @return [Symbol, HubspotSDK::Models::Marketing::DependentFieldFilter::Operator]
        required :operator, enum: -> { HubspotSDK::Marketing::DependentFieldFilter::Operator }

        # @!attribute range_end
        #
        #   @return [String]
        required :range_end, String, api_name: :rangeEnd

        # @!attribute range_start
        #
        #   @return [String]
        required :range_start, String, api_name: :rangeStart

        # @!attribute value
        #
        #   @return [String]
        required :value, String

        # @!attribute values
        #
        #   @return [Array<String>]
        required :values, HubspotSDK::Internal::Type::ArrayOf[String]

        # @!method initialize(operator:, range_end:, range_start:, value:, values:)
        #   A condition based on customer input
        #
        #   @param operator [Symbol, HubspotSDK::Models::Marketing::DependentFieldFilter::Operator]
        #   @param range_end [String]
        #   @param range_start [String]
        #   @param value [String]
        #   @param values [Array<String>]

        # @see HubspotSDK::Models::Marketing::DependentFieldFilter#operator
        module Operator
          extend HubspotSDK::Internal::Type::Enum

          EQ = :eq
          NEQ = :neq
          CONTAINS = :contains
          DOESNT_CONTAIN = :doesnt_contain
          STR_STARTS_WITH = :str_starts_with
          STR_ENDS_WITH = :str_ends_with
          LT = :lt
          LTE = :lte
          GT = :gt
          GTE = :gte
          BETWEEN = :between
          NOT_BETWEEN = :not_between
          WITHIN_TIME_REVERSE = :within_time_reverse
          WITHIN_TIME = :within_time
          SET_ANY = :set_any
          SET_NOT_ANY = :set_not_any
          SET_ALL = :set_all
          SET_NOT_ALL = :set_not_all
          SET_EQ = :set_eq
          SET_NEQ = :set_neq
          IS_NOT_EMPTY = :is_not_empty

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
