# frozen_string_literal: true

module HubspotSDK
  module Models
    module CRM
      module Associations
        module Schema
          class PublicAssociationDefinitionCreateRequest < HubspotSDK::Internal::Type::BaseModel
            # @!attribute label
            #
            #   @return [String]
            required :label, String

            # @!attribute name
            #
            #   @return [String]
            required :name, String

            # @!attribute inverse_label
            #
            #   @return [String, nil]
            optional :inverse_label, String, api_name: :inverseLabel

            # @!method initialize(label:, name:, inverse_label: nil)
            #   @param label [String]
            #   @param name [String]
            #   @param inverse_label [String]
          end
        end
      end
    end
  end
end
