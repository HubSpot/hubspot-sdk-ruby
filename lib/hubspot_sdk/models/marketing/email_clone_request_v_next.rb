# frozen_string_literal: true

module HubspotSDK
  module Models
    module Marketing
      class EmailCloneRequestVNext < HubspotSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The unique identifier of the email to be cloned.
        #
        #   @return [String]
        required :id, String

        # @!attribute clone_name
        #   The name to assign to the cloned email.
        #
        #   @return [String, nil]
        optional :clone_name, String, api_name: :cloneName

        # @!attribute language
        #   The language code for the cloned email, such as 'en' for English.
        #
        #   @return [String, nil]
        optional :language, String

        # @!method initialize(id:, clone_name: nil, language: nil)
        #   @param id [String] The unique identifier of the email to be cloned.
        #
        #   @param clone_name [String] The name to assign to the cloned email.
        #
        #   @param language [String] The language code for the cloned email, such as 'en' for English.
      end
    end
  end
end
