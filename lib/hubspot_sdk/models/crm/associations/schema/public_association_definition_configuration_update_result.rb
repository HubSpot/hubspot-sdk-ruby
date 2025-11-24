# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      module Associations
        module Schema
          class PublicAssociationDefinitionConfigurationUpdateResult < HubspotSDK::Internal::Type::BaseModel
            # @!attribute category
            #
            #   @return [Symbol, HubspotSDK::Models::Crm::Associations::Schema::PublicAssociationDefinitionConfigurationUpdateResult::Category]
            required :category,
                     enum: -> { HubspotSDK::Crm::Associations::Schema::PublicAssociationDefinitionConfigurationUpdateResult::Category }

            # @!attribute type_id
            #
            #   @return [Integer]
            required :type_id, Integer, api_name: :typeId

            # @!attribute user_enforced_max_to_object_ids
            #
            #   @return [Integer, nil]
            optional :user_enforced_max_to_object_ids, Integer, api_name: :userEnforcedMaxToObjectIds

            # @!method initialize(category:, type_id:, user_enforced_max_to_object_ids: nil)
            #   @param category [Symbol, HubspotSDK::Models::Crm::Associations::Schema::PublicAssociationDefinitionConfigurationUpdateResult::Category]
            #   @param type_id [Integer]
            #   @param user_enforced_max_to_object_ids [Integer]

            # @see HubspotSDK::Models::Crm::Associations::Schema::PublicAssociationDefinitionConfigurationUpdateResult#category
            module Category
              extend HubspotSDK::Internal::Type::Enum

              HUBSPOT_DEFINED = :HUBSPOT_DEFINED
              INTEGRATOR_DEFINED = :INTEGRATOR_DEFINED
              USER_DEFINED = :USER_DEFINED

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end
        end
      end
    end
  end
end
