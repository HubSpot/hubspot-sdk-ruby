# frozen_string_literal: true

module HubspotSDK
  module Models
    module CRM
      module Associations
        module Schema
          class BatchInputPublicAssociationDefinitionConfigurationCreateRequest < HubspotSDK::Internal::Type::BaseModel
            # @!attribute inputs
            #
            #   @return [Array<HubspotSDK::Models::CRM::Associations::Schema::PublicAssociationDefinitionConfigurationCreateRequest>]
            required :inputs,
                     -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::CRM::Associations::Schema::PublicAssociationDefinitionConfigurationCreateRequest] }

            # @!method initialize(inputs:)
            #   @param inputs [Array<HubspotSDK::Models::CRM::Associations::Schema::PublicAssociationDefinitionConfigurationCreateRequest>]
          end
        end
      end
    end
  end
end
