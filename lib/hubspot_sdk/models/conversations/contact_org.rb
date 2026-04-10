# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Conversations
      class ContactOrg < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute company
        #
        #   @return [String, nil]
        optional :company, String

        # @!attribute department
        #
        #   @return [String, nil]
        optional :department, String

        # @!attribute title
        #
        #   @return [String, nil]
        optional :title, String

        # @!method initialize(company: nil, department: nil, title: nil)
        #   @param company [String]
        #   @param department [String]
        #   @param title [String]
      end
    end
  end
end
