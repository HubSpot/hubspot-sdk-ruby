# frozen_string_literal: true

module HubspotSDK
  module Models
    module CRM
      module Associations
        module Schema
          class BatchInputPublicAssociationSpec < HubspotSDK::Internal::Type::BaseModel
            # @!attribute inputs
            #
            #   @return [Array<HubspotSDK::Models::CRM::Associations::Schema::PublicAssociationSpec>]
            required :inputs,
                     -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::CRM::Associations::Schema::PublicAssociationSpec] }

            # @!method initialize(inputs:)
            #   @param inputs [Array<HubspotSDK::Models::CRM::Associations::Schema::PublicAssociationSpec>]
          end
        end
      end
    end
  end
end
