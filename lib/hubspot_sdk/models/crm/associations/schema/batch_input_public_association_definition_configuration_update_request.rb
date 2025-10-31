# frozen_string_literal: true

module HubspotSDK
  module Models
    module CRM
      module Associations
        module Schema
          class BatchInputPublicAssociationDefinitionConfigurationUpdateRequest < HubspotSDK::Internal::Type::BaseModel
            # @!attribute inputs
            #
            #   @return [Array<HubspotSDK::Models::CRM::Associations::Schema::PublicAssociationDefinitionConfigurationUpdateRequest>]
            required :inputs,
                     -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::CRM::Associations::Schema::PublicAssociationDefinitionConfigurationUpdateRequest] }

            # @!method initialize(inputs:)
            #   @param inputs [Array<HubspotSDK::Models::CRM::Associations::Schema::PublicAssociationDefinitionConfigurationUpdateRequest>]
          end
        end
      end
    end
  end
end
