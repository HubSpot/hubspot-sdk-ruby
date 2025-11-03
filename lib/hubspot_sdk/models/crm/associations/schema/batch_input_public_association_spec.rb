# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      module Associations
        module Schema
          class BatchInputPublicAssociationSpec < HubspotSDK::Internal::Type::BaseModel
            # @!attribute inputs
            #
            #   @return [Array<HubspotSDK::Models::Crm::Associations::Schema::PublicAssociationSpec>]
            required :inputs,
                     -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Crm::Associations::Schema::PublicAssociationSpec] }

            # @!method initialize(inputs:)
            #   @param inputs [Array<HubspotSDK::Models::Crm::Associations::Schema::PublicAssociationSpec>]
          end
        end
      end
    end
  end
end
