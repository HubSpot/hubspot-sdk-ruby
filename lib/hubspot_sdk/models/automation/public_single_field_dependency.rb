# frozen_string_literal: true

module HubspotSDK
  module Models
    module Automation
      class PublicSingleFieldDependency < HubspotSDK::Internal::Type::BaseModel
        # @!attribute controlling_field_name
        #   The name of the field that controls the dependency.
        #
        #   @return [String]
        required :controlling_field_name, String, api_name: :controllingFieldName

        # @!attribute dependency_type
        #   The type of dependency, with the default value being 'SINGLE_FIELD'.
        #
        #   @return [Symbol, HubspotSDK::Models::Automation::PublicSingleFieldDependency::DependencyType]
        required :dependency_type,
                 enum: -> { HubspotSDK::Automation::PublicSingleFieldDependency::DependencyType },
                 api_name: :dependencyType

        # @!attribute dependent_field_names
        #
        #   @return [Array<String>]
        required :dependent_field_names,
                 HubspotSDK::Internal::Type::ArrayOf[String],
                 api_name: :dependentFieldNames

        # @!method initialize(controlling_field_name:, dependency_type:, dependent_field_names:)
        #   @param controlling_field_name [String] The name of the field that controls the dependency.
        #
        #   @param dependency_type [Symbol, HubspotSDK::Models::Automation::PublicSingleFieldDependency::DependencyType] The type of dependency, with the default value being 'SINGLE_FIELD'.
        #
        #   @param dependent_field_names [Array<String>]

        # The type of dependency, with the default value being 'SINGLE_FIELD'.
        #
        # @see HubspotSDK::Models::Automation::PublicSingleFieldDependency#dependency_type
        module DependencyType
          extend HubspotSDK::Internal::Type::Enum

          SINGLE_FIELD = :SINGLE_FIELD

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
