# frozen_string_literal: true

module HubspotSDK
  module Models
    module CRM
      module Associations
        module Schema
          class PublicAssociationSpec < HubspotSDK::Internal::Type::BaseModel
            # @!attribute category
            #
            #   @return [String]
            required :category, String

            # @!attribute type_id
            #
            #   @return [Integer]
            required :type_id, Integer, api_name: :typeId

            # @!method initialize(category:, type_id:)
            #   @param category [String]
            #   @param type_id [Integer]
          end
        end
      end
    end
  end
end
