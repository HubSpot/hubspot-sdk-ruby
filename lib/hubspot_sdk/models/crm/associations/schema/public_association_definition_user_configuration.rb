# frozen_string_literal: true

module HubspotSDK
  module Models
    module CRM
      module Associations
        module Schema
          class PublicAssociationDefinitionUserConfiguration < HubspotSDK::Internal::Type::BaseModel
            # @!attribute category
            #
            #   @return [Symbol, HubspotSDK::Models::CRM::Associations::Schema::PublicAssociationDefinitionUserConfiguration::Category]
            required :category,
                     enum: -> { HubspotSDK::CRM::Associations::Schema::PublicAssociationDefinitionUserConfiguration::Category }

            # @!attribute type_id
            #
            #   @return [Integer]
            required :type_id, Integer, api_name: :typeId

            # @!attribute label
            #
            #   @return [String, nil]
            optional :label, String

            # @!attribute user_enforced_max_to_object_ids
            #
            #   @return [Integer, nil]
            optional :user_enforced_max_to_object_ids, Integer, api_name: :userEnforcedMaxToObjectIds

            # @!method initialize(category:, type_id:, label: nil, user_enforced_max_to_object_ids: nil)
            #   @param category [Symbol, HubspotSDK::Models::CRM::Associations::Schema::PublicAssociationDefinitionUserConfiguration::Category]
            #   @param type_id [Integer]
            #   @param label [String]
            #   @param user_enforced_max_to_object_ids [Integer]

            # @see HubspotSDK::Models::CRM::Associations::Schema::PublicAssociationDefinitionUserConfiguration#category
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
