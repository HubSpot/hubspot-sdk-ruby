# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Crm
      class PublicAssociationDefinitionCreateRequest < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute label
        #   A descriptor that provides context about the relationship between two associated
        #   CRM objects.
        #
        #   @return [String]
        required :label, String

        # @!attribute name
        #   The unique identifier for the association definition.
        #
        #   @return [String]
        required :name, String

        # @!attribute inverse_label
        #   An optional descriptor that clarifies the reverse relationship in the
        #   association.
        #
        #   @return [String, nil]
        optional :inverse_label, String, api_name: :inverseLabel

        # @!method initialize(label:, name:, inverse_label: nil)
        #   Some parameter documentations has been truncated, see
        #   {HubSpotSDK::Models::Crm::PublicAssociationDefinitionCreateRequest} for more
        #   details.
        #
        #   @param label [String] A descriptor that provides context about the relationship between two associated
        #
        #   @param name [String] The unique identifier for the association definition.
        #
        #   @param inverse_label [String] An optional descriptor that clarifies the reverse relationship in the associatio
      end
    end
  end
end
