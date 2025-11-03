# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      module Associations
        module Schema
          class PublicAssociationDefinitionUpdateRequest < HubspotSDK::Internal::Type::BaseModel
            # @!attribute association_type_id
            #
            #   @return [Integer]
            required :association_type_id, Integer, api_name: :associationTypeId

            # @!attribute label
            #
            #   @return [String]
            required :label, String

            # @!attribute inverse_label
            #
            #   @return [String, nil]
            optional :inverse_label, String, api_name: :inverseLabel

            # @!method initialize(association_type_id:, label:, inverse_label: nil)
            #   @param association_type_id [Integer]
            #   @param label [String]
            #   @param inverse_label [String]
          end
        end
      end
    end
  end
end
