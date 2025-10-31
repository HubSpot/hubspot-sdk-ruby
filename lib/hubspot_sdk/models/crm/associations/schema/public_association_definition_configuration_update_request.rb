# frozen_string_literal: true

module HubspotSDK
  module Models
    module CRM
      module Associations
        module Schema
          class PublicAssociationDefinitionConfigurationUpdateRequest < HubspotSDK::Internal::Type::BaseModel
            # @!attribute category
            #
            #   @return [Symbol, HubspotSDK::Models::CRM::Associations::Schema::PublicAssociationDefinitionConfigurationUpdateRequest::Category]
            required :category,
                     enum: -> { HubspotSDK::CRM::Associations::Schema::PublicAssociationDefinitionConfigurationUpdateRequest::Category }

            # @!attribute max_to_object_ids
            #
            #   @return [Integer]
            required :max_to_object_ids, Integer, api_name: :maxToObjectIds

            # @!attribute type_id
            #
            #   @return [Integer]
            required :type_id, Integer, api_name: :typeId

            # @!method initialize(category:, max_to_object_ids:, type_id:)
            #   @param category [Symbol, HubspotSDK::Models::CRM::Associations::Schema::PublicAssociationDefinitionConfigurationUpdateRequest::Category]
            #   @param max_to_object_ids [Integer]
            #   @param type_id [Integer]

            # @see HubspotSDK::Models::CRM::Associations::Schema::PublicAssociationDefinitionConfigurationUpdateRequest#category
            module Category
              extend HubspotSDK::Internal::Type::Enum

              HUBSPOT_DEFINED = :HUBSPOT_DEFINED
              USER_DEFINED = :USER_DEFINED
              INTEGRATOR_DEFINED = :INTEGRATOR_DEFINED

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end
        end
      end
    end
  end
end
