# frozen_string_literal: true

module HubspotSDK
  module Models
    module CRM
      class TimelineEventTemplateToken < HubspotSDK::Internal::Type::BaseModel
        # @!attribute label
        #   Used for list segmentation and reporting.
        #
        #   @return [String]
        required :label, String

        # @!attribute name
        #   The name of the token referenced in the templates. This must be unique for the
        #   specific template. It may only contain alphanumeric characters, periods, dashes,
        #   or underscores (. - \_).
        #
        #   @return [String]
        required :name, String

        # @!attribute type
        #   The data type of the token. You can currently choose from [string, number, date,
        #   enumeration].
        #
        #   @return [Symbol, HubspotSDK::Models::CRM::TimelineEventTemplateToken::Type]
        required :type, enum: -> { HubspotSDK::CRM::TimelineEventTemplateToken::Type }

        # @!attribute created_at
        #   The date and time that the Event Template Token was created, as an ISO 8601
        #   timestamp. Will be null if the template was created before Feb 18th, 2020.
        #
        #   @return [Time, nil]
        optional :created_at, Time, api_name: :createdAt

        # @!attribute object_property_name
        #   The name of the CRM object property. This will populate the CRM object property
        #   associated with the event. With enough of these, you can fully build CRM objects
        #   via the Timeline API.
        #
        #   @return [String, nil]
        optional :object_property_name, String, api_name: :objectPropertyName

        # @!attribute options
        #   If type is `enumeration`, we should have a list of options to choose from.
        #
        #   @return [Array<HubspotSDK::Models::CRM::TimelineEventTemplateTokenOption>, nil]
        optional :options,
                 -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::CRM::TimelineEventTemplateTokenOption] }

        # @!attribute updated_at
        #   The date and time that the Event Template Token was last updated, as an ISO 8601
        #   timestamp. Will be null if the template was created before Feb 18th, 2020.
        #
        #   @return [Time, nil]
        optional :updated_at, Time, api_name: :updatedAt

        # @!method initialize(label:, name:, type:, created_at: nil, object_property_name: nil, options: nil, updated_at: nil)
        #   Some parameter documentations has been truncated, see
        #   {HubspotSDK::Models::CRM::TimelineEventTemplateToken} for more details.
        #
        #   State of the token definition.
        #
        #   @param label [String] Used for list segmentation and reporting.
        #
        #   @param name [String] The name of the token referenced in the templates. This must be unique for the s
        #
        #   @param type [Symbol, HubspotSDK::Models::CRM::TimelineEventTemplateToken::Type] The data type of the token. You can currently choose from [string, number, date,
        #
        #   @param created_at [Time] The date and time that the Event Template Token was created, as an ISO 8601 time
        #
        #   @param object_property_name [String] The name of the CRM object property. This will populate the CRM object property
        #
        #   @param options [Array<HubspotSDK::Models::CRM::TimelineEventTemplateTokenOption>] If type is `enumeration`, we should have a list of options to choose from.
        #
        #   @param updated_at [Time] The date and time that the Event Template Token was last updated, as an ISO 8601

        # The data type of the token. You can currently choose from [string, number, date,
        # enumeration].
        #
        # @see HubspotSDK::Models::CRM::TimelineEventTemplateToken#type
        module Type
          extend HubspotSDK::Internal::Type::Enum

          DATE = :date
          ENUMERATION = :enumeration
          NUMBER = :number
          STRING = :string

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
