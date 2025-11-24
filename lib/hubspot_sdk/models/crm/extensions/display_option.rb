# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      module Extensions
        class DisplayOption < HubspotSDK::Internal::Type::BaseModel
          # @!attribute label
          #   The text that will be displayed to users for this option.
          #
          #   @return [String]
          required :label, String

          # @!attribute name
          #   JSON-friendly unique name for option.
          #
          #   @return [String]
          required :name, String

          # @!attribute type
          #   The type of status.
          #
          #   @return [Symbol, HubspotSDK::Models::Crm::Extensions::DisplayOption::Type]
          required :type, enum: -> { HubspotSDK::Crm::Extensions::DisplayOption::Type }

          # @!method initialize(label:, name:, type:)
          #   Option definition for STATUS dataTypes.
          #
          #   @param label [String] The text that will be displayed to users for this option.
          #
          #   @param name [String] JSON-friendly unique name for option.
          #
          #   @param type [Symbol, HubspotSDK::Models::Crm::Extensions::DisplayOption::Type] The type of status.

          # The type of status.
          #
          # @see HubspotSDK::Models::Crm::Extensions::DisplayOption#type
          module Type
            extend HubspotSDK::Internal::Type::Enum

            DANGER = :DANGER
            DEFAULT = :DEFAULT
            INFO = :INFO
            SUCCESS = :SUCCESS
            WARNING = :WARNING

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end
      end
    end
  end
end
