# frozen_string_literal: true

module HubspotSDK
  module Models
    module Scheduler
      class ExternalLinkFormField < HubspotSDK::Internal::Type::BaseModel
        # @!attribute field_type
        #
        #   @return [String]
        required :field_type, String, api_name: :fieldType

        # @!attribute is_custom
        #
        #   @return [Boolean]
        required :is_custom, HubspotSDK::Internal::Type::Boolean, api_name: :isCustom

        # @!attribute is_required
        #
        #   @return [Boolean]
        required :is_required, HubspotSDK::Internal::Type::Boolean, api_name: :isRequired

        # @!attribute label
        #
        #   @return [String]
        required :label, String

        # @!attribute name
        #
        #   @return [String]
        required :name, String

        # @!attribute options
        #
        #   @return [Array<HubspotSDK::Models::Scheduler::ExternalOption>]
        required :options, -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Scheduler::ExternalOption] }

        # @!attribute type
        #
        #   @return [String]
        required :type, String

        # @!method initialize(field_type:, is_custom:, is_required:, label:, name:, options:, type:)
        #   @param field_type [String]
        #   @param is_custom [Boolean]
        #   @param is_required [Boolean]
        #   @param label [String]
        #   @param name [String]
        #   @param options [Array<HubspotSDK::Models::Scheduler::ExternalOption>]
        #   @param type [String]
      end
    end
  end
end
