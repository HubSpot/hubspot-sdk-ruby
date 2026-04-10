# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Crm
      class PublicAssociationDefinitionUpdateRequest < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute association_type_id
        #   The unique identifier for the association type.
        #
        #   @return [Integer]
        required :association_type_id, Integer, api_name: :associationTypeId

        # @!attribute label
        #   A descriptor that provides context about the relationship between associated
        #   records.
        #
        #   @return [String]
        required :label, String

        # @!attribute inverse_label
        #   An optional descriptor for the inverse relationship between associated records.
        #
        #   @return [String, nil]
        optional :inverse_label, String, api_name: :inverseLabel

        # @!method initialize(association_type_id:, label:, inverse_label: nil)
        #   Some parameter documentations has been truncated, see
        #   {HubSpotSDK::Models::Crm::PublicAssociationDefinitionUpdateRequest} for more
        #   details.
        #
        #   @param association_type_id [Integer] The unique identifier for the association type.
        #
        #   @param label [String] A descriptor that provides context about the relationship between associated rec
        #
        #   @param inverse_label [String] An optional descriptor for the inverse relationship between associated records.
      end
    end
  end
end
