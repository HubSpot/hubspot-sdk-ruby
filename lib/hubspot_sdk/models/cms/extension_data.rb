# frozen_string_literal: true

module HubspotSDK
  module Models
    module Cms
      class ExtensionData < HubspotSDK::Internal::Type::BaseModel
        # @!attribute extension_status_map
        #
        #   @return [Hash{Symbol=>Symbol, HubspotSDK::Models::Cms::ExtensionData::ExtensionStatusMap}]
        required :extension_status_map,
                 -> {
                   HubspotSDK::Internal::Type::HashOf[enum: HubspotSDK::Cms::ExtensionData::ExtensionStatusMap]
                 },
                 api_name: :extensionStatusMap

        # @!attribute tags
        #
        #   @return [Array<String>]
        required :tags, HubspotSDK::Internal::Type::ArrayOf[String]

        # @!attribute case_change_test_extension_data
        #
        #   @return [HubspotSDK::Models::Cms::CaseChangeTestExtensionData, nil]
        optional :case_change_test_extension_data,
                 -> { HubspotSDK::Cms::CaseChangeTestExtensionData },
                 api_name: :caseChangeTestExtensionData

        # @!attribute option_decorators_extension_data
        #
        #   @return [HubspotSDK::Models::Cms::OptionDecoratorsExtensionData, nil]
        optional :option_decorators_extension_data,
                 -> { HubspotSDK::Cms::OptionDecoratorsExtensionData },
                 api_name: :optionDecoratorsExtensionData

        # @!attribute required_properties_extension_data
        #
        #   @return [HubspotSDK::Models::Cms::RequiredPropertiesExtensionData, nil]
        optional :required_properties_extension_data,
                 -> { HubspotSDK::Cms::RequiredPropertiesExtensionData },
                 api_name: :requiredPropertiesExtensionData

        # @!attribute soft_required_properties_extension_data
        #
        #   @return [HubspotSDK::Models::Cms::SoftRequiredPropertiesExtensionData, nil]
        optional :soft_required_properties_extension_data,
                 -> { HubspotSDK::Cms::SoftRequiredPropertiesExtensionData },
                 api_name: :softRequiredPropertiesExtensionData

        # @!method initialize(extension_status_map:, tags:, case_change_test_extension_data: nil, option_decorators_extension_data: nil, required_properties_extension_data: nil, soft_required_properties_extension_data: nil)
        #   @param extension_status_map [Hash{Symbol=>Symbol, HubspotSDK::Models::Cms::ExtensionData::ExtensionStatusMap}]
        #   @param tags [Array<String>]
        #   @param case_change_test_extension_data [HubspotSDK::Models::Cms::CaseChangeTestExtensionData]
        #   @param option_decorators_extension_data [HubspotSDK::Models::Cms::OptionDecoratorsExtensionData]
        #   @param required_properties_extension_data [HubspotSDK::Models::Cms::RequiredPropertiesExtensionData]
        #   @param soft_required_properties_extension_data [HubspotSDK::Models::Cms::SoftRequiredPropertiesExtensionData]

        module ExtensionStatusMap
          extend HubspotSDK::Internal::Type::Enum

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
