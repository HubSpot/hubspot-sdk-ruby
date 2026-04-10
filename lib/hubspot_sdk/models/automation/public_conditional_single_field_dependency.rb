# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Automation
      class PublicConditionalSingleFieldDependency < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute controlling_field_name
        #   The name of the field that determines the dependency.
        #
        #   @return [String]
        required :controlling_field_name, String, api_name: :controllingFieldName

        # @!attribute controlling_field_value
        #   The value of the controlling field that triggers the dependency.
        #
        #   @return [String]
        required :controlling_field_value, String, api_name: :controllingFieldValue

        # @!attribute dependency_type
        #   The type of dependency, with the default value being CONDITIONAL_SINGLE_FIELD.
        #
        #   @return [Symbol, HubSpotSDK::Models::Automation::PublicConditionalSingleFieldDependency::DependencyType]
        required :dependency_type,
                 enum: -> { HubSpotSDK::Automation::PublicConditionalSingleFieldDependency::DependencyType },
                 api_name: :dependencyType

        # @!attribute dependent_field_names
        #
        #   @return [Array<String>]
        required :dependent_field_names,
                 HubSpotSDK::Internal::Type::ArrayOf[String],
                 api_name: :dependentFieldNames

        # @!method initialize(controlling_field_name:, controlling_field_value:, dependency_type:, dependent_field_names:)
        #   @param controlling_field_name [String] The name of the field that determines the dependency.
        #
        #   @param controlling_field_value [String] The value of the controlling field that triggers the dependency.
        #
        #   @param dependency_type [Symbol, HubSpotSDK::Models::Automation::PublicConditionalSingleFieldDependency::DependencyType] The type of dependency, with the default value being CONDITIONAL_SINGLE_FIELD.
        #
        #   @param dependent_field_names [Array<String>]

        # The type of dependency, with the default value being CONDITIONAL_SINGLE_FIELD.
        #
        # @see HubSpotSDK::Models::Automation::PublicConditionalSingleFieldDependency#dependency_type
        module DependencyType
          extend HubSpotSDK::Internal::Type::Enum

          CONDITIONAL_SINGLE_FIELD = :CONDITIONAL_SINGLE_FIELD

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
