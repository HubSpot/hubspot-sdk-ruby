# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Crm
      module Extensions
        module Calling
          class Speaker < HubSpotSDK::Internal::Type::BaseModel
            # @!attribute id
            #
            #   @return [String]
            required :id, String

            # @!attribute name
            #
            #   @return [String]
            required :name, String

            # @!attribute email
            #
            #   @return [String, nil]
            optional :email, String

            # @!method initialize(id:, name:, email: nil)
            #   @param id [String]
            #   @param name [String]
            #   @param email [String]
          end
        end
      end
    end
  end
end
