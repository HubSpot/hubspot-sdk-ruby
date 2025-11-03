# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      module Associations
        class PublicFetchAssociationsBatchRequest < HubspotSDK::Internal::Type::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!attribute after
          #
          #   @return [String, nil]
          optional :after, String

          # @!method initialize(id:, after: nil)
          #   @param id [String]
          #   @param after [String]
        end
      end
    end
  end
end
