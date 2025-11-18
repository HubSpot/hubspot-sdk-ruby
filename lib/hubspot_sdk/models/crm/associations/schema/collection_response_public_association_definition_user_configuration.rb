# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      module Associations
        module Schema
          class CollectionResponsePublicAssociationDefinitionUserConfiguration < HubspotSDK::Internal::Type::BaseModel
            # @!attribute results
            #
            #   @return [Array<HubspotSDK::Models::Crm::Associations::Schema::PublicAssociationDefinitionUserConfiguration>]
            required :results,
                     -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Crm::Associations::Schema::PublicAssociationDefinitionUserConfiguration] }

            # @!attribute paging
            #
            #   @return [HubspotSDK::Models::Paging, nil]
            optional :paging, -> { HubspotSDK::Paging }

            # @!method initialize(results:, paging: nil)
            #   @param results [Array<HubspotSDK::Models::Crm::Associations::Schema::PublicAssociationDefinitionUserConfiguration>]
            #   @param paging [HubspotSDK::Models::Paging]
          end
        end
      end
    end
  end
end
