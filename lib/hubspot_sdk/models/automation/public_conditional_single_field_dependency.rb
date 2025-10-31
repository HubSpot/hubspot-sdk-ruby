# frozen_string_literal: true

module HubspotSDK
  module Models
    module Automation
      class PublicConditionalSingleFieldDependency < HubspotSDK::Internal::Type::BaseModel
        # @!attribute controlling_field_name
        #
        #   @return [String]
        required :controlling_field_name, String, api_name: :controllingFieldName

        # @!attribute controlling_field_value
        #
        #   @return [String]
        required :controlling_field_value, String, api_name: :controllingFieldValue

        # @!attribute dependency_type
        #
        #   @return [Symbol, HubspotSDK::Models::Automation::PublicConditionalSingleFieldDependency::DependencyType]
        required :dependency_type,
                 enum: -> { HubspotSDK::Automation::PublicConditionalSingleFieldDependency::DependencyType },
                 api_name: :dependencyType

        # @!attribute dependent_field_names
        #
        #   @return [Array<String>]
        required :dependent_field_names,
                 HubspotSDK::Internal::Type::ArrayOf[String],
                 api_name: :dependentFieldNames

        # @!method initialize(controlling_field_name:, controlling_field_value:, dependency_type:, dependent_field_names:)
        #   @param controlling_field_name [String]
        #   @param controlling_field_value [String]
        #   @param dependency_type [Symbol, HubspotSDK::Models::Automation::PublicConditionalSingleFieldDependency::DependencyType]
        #   @param dependent_field_names [Array<String>]

        # @see HubspotSDK::Models::Automation::PublicConditionalSingleFieldDependency#dependency_type
        module DependencyType
          extend HubspotSDK::Internal::Type::Enum

          CONDITIONAL_SINGLE_FIELD = :CONDITIONAL_SINGLE_FIELD

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
