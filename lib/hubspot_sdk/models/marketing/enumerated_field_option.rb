# frozen_string_literal: true

module HubspotSDK
  module Models
    module Marketing
      class EnumeratedFieldOption < HubspotSDK::Internal::Type::BaseModel
        # @!attribute display_order
        #   The order the choices will be displayed in.
        #
        #   @return [Integer]
        required :display_order, Integer, api_name: :displayOrder

        # @!attribute label
        #   The visible label for this choice.
        #
        #   @return [String]
        required :label, String

        # @!attribute value
        #   The value which will be submitted if this choice is selected.
        #
        #   @return [String]
        required :value, String

        # @!attribute description
        #
        #   @return [String, nil]
        optional :description, String

        # @!method initialize(display_order:, label:, value:, description: nil)
        #   @param display_order [Integer] The order the choices will be displayed in.
        #
        #   @param label [String] The visible label for this choice.
        #
        #   @param value [String] The value which will be submitted if this choice is selected.
        #
        #   @param description [String]
      end
    end
  end
end
