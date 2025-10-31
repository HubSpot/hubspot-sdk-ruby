# frozen_string_literal: true

module HubspotSDK
  module Models
    module Cms
      class DefaultRequirements < HubspotSDK::Internal::Type::BaseModel
        # @!attribute gates
        #
        #   @return [Array<String>]
        required :gates, HubspotSDK::Internal::Type::ArrayOf[String]

        # @!attribute operator
        #
        #   @return [Symbol, HubspotSDK::Models::Cms::DefaultRequirements::Operator]
        required :operator, enum: -> { HubspotSDK::Cms::DefaultRequirements::Operator }

        # @!attribute scope_names
        #
        #   @return [Array<String>]
        required :scope_names, HubspotSDK::Internal::Type::ArrayOf[String], api_name: :scopeNames

        # @!attribute settings
        #
        #   @return [Array<String>]
        required :settings, HubspotSDK::Internal::Type::ArrayOf[String]

        # @!method initialize(gates:, operator:, scope_names:, settings:)
        #   @param gates [Array<String>]
        #   @param operator [Symbol, HubspotSDK::Models::Cms::DefaultRequirements::Operator]
        #   @param scope_names [Array<String>]
        #   @param settings [Array<String>]

        # @see HubspotSDK::Models::Cms::DefaultRequirements#operator
        module Operator
          extend HubspotSDK::Internal::Type::Enum

          AND = :AND
          OR = :OR

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
