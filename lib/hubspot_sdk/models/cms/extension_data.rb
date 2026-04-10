# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Cms
      class ExtensionData < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute extension_status_map
        #
        #   @return [Hash{Symbol=>Symbol, HubSpotSDK::Models::Cms::ExtensionData::ExtensionStatusMap}]
        required :extension_status_map,
                 -> {
                   HubSpotSDK::Internal::Type::HashOf[enum: HubSpotSDK::Cms::ExtensionData::ExtensionStatusMap]
                 },
                 api_name: :extensionStatusMap

        # @!attribute tags
        #
        #   @return [Array<String>]
        required :tags, HubSpotSDK::Internal::Type::ArrayOf[String]

        # @!attribute case_change_test_extension_data
        #
        #   @return [HubSpotSDK::Models::Cms::CaseChangeTestExtensionData, nil]
        optional :case_change_test_extension_data,
                 -> { HubSpotSDK::Cms::CaseChangeTestExtensionData },
                 api_name: :caseChangeTestExtensionData

        # @!attribute option_decorators_extension_data
        #
        #   @return [HubSpotSDK::Models::Cms::OptionDecoratorsExtensionData, nil]
        optional :option_decorators_extension_data,
                 -> { HubSpotSDK::Cms::OptionDecoratorsExtensionData },
                 api_name: :optionDecoratorsExtensionData

        # @!attribute required_properties_extension_data
        #
        #   @return [HubSpotSDK::Models::Cms::RequiredPropertiesExtensionData, nil]
        optional :required_properties_extension_data,
                 -> { HubSpotSDK::Cms::RequiredPropertiesExtensionData },
                 api_name: :requiredPropertiesExtensionData

        # @!attribute soft_required_properties_extension_data
        #
        #   @return [HubSpotSDK::Models::Cms::SoftRequiredPropertiesExtensionData, nil]
        optional :soft_required_properties_extension_data,
                 -> { HubSpotSDK::Cms::SoftRequiredPropertiesExtensionData },
                 api_name: :softRequiredPropertiesExtensionData

        # @!method initialize(extension_status_map:, tags:, case_change_test_extension_data: nil, option_decorators_extension_data: nil, required_properties_extension_data: nil, soft_required_properties_extension_data: nil)
        #   @param extension_status_map [Hash{Symbol=>Symbol, HubSpotSDK::Models::Cms::ExtensionData::ExtensionStatusMap}]
        #   @param tags [Array<String>]
        #   @param case_change_test_extension_data [HubSpotSDK::Models::Cms::CaseChangeTestExtensionData]
        #   @param option_decorators_extension_data [HubSpotSDK::Models::Cms::OptionDecoratorsExtensionData]
        #   @param required_properties_extension_data [HubSpotSDK::Models::Cms::RequiredPropertiesExtensionData]
        #   @param soft_required_properties_extension_data [HubSpotSDK::Models::Cms::SoftRequiredPropertiesExtensionData]

        module ExtensionStatusMap
          extend HubSpotSDK::Internal::Type::Enum

          OK = :OK
          ERROR = :ERROR
          TIMEOUT = :TIMEOUT

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
