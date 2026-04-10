# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Cms
      class DefaultRequirements < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute gates
        #
        #   @return [Array<String>]
        required :gates, HubSpotSDK::Internal::Type::ArrayOf[String]

        # @!attribute operator
        #
        #   @return [Symbol, HubSpotSDK::Models::Cms::DefaultRequirements::Operator]
        required :operator, enum: -> { HubSpotSDK::Cms::DefaultRequirements::Operator }

        # @!attribute scope_names
        #
        #   @return [Array<String>]
        required :scope_names, HubSpotSDK::Internal::Type::ArrayOf[String], api_name: :scopeNames

        # @!attribute settings
        #
        #   @return [Array<String>]
        required :settings, HubSpotSDK::Internal::Type::ArrayOf[String]

        # @!method initialize(gates:, operator:, scope_names:, settings:)
        #   @param gates [Array<String>]
        #   @param operator [Symbol, HubSpotSDK::Models::Cms::DefaultRequirements::Operator]
        #   @param scope_names [Array<String>]
        #   @param settings [Array<String>]

        # @see HubSpotSDK::Models::Cms::DefaultRequirements#operator
        module Operator
          extend HubSpotSDK::Internal::Type::Enum

          AND = :AND
          OR = :OR

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
