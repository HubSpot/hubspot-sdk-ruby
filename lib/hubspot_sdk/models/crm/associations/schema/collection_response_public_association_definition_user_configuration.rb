# frozen_string_literal: true

module HubspotSDK
  module Models
    module CRM
      module Associations
        module Schema
          class CollectionResponsePublicAssociationDefinitionUserConfiguration < HubspotSDK::Internal::Type::BaseModel
            # @!attribute results
            #
            #   @return [Array<HubspotSDK::Models::CRM::Associations::Schema::PublicAssociationDefinitionUserConfiguration>]
            required :results,
                     -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::CRM::Associations::Schema::PublicAssociationDefinitionUserConfiguration] }

            # @!attribute paging
            #   Contains information pagination of results.
            #
            #   @return [HubspotSDK::Models::Marketing::Paging, nil]
            optional :paging, -> { HubspotSDK::Marketing::Paging }

            # @!method initialize(results:, paging: nil)
            #   @param results [Array<HubspotSDK::Models::CRM::Associations::Schema::PublicAssociationDefinitionUserConfiguration>]
            #
            #   @param paging [HubspotSDK::Models::Marketing::Paging] Contains information pagination of results.
          end
        end
      end
    end
  end
end
