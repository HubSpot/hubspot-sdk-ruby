# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      module Extensions
        class ContactCallerID < HubspotSDK::Internal::Type::BaseModel
          # @!attribute caller_id_type
          #   Specifies the type of caller ID, with the default value being CONTACT.
          #
          #   @return [Symbol, HubspotSDK::Models::Crm::Extensions::ContactCallerID::CallerIDType]
          required :caller_id_type,
                   enum: -> { HubspotSDK::Crm::Extensions::ContactCallerID::CallerIDType },
                   api_name: :callerIdType

          # @!attribute object_coordinates
          #
          #   @return [HubspotSDK::Models::Crm::Extensions::ObjectCoordinates]
          required :object_coordinates,
                   -> { HubspotSDK::Crm::Extensions::ObjectCoordinates },
                   api_name: :objectCoordinates

          # @!attribute email
          #   The email address of the contact.
          #
          #   @return [String, nil]
          optional :email, String

          # @!attribute first_name
          #   The first name of the contact.
          #
          #   @return [String, nil]
          optional :first_name, String, api_name: :firstName

          # @!attribute last_name
          #   The last name of the contact.
          #
          #   @return [String, nil]
          optional :last_name, String, api_name: :lastName

          # @!method initialize(caller_id_type:, object_coordinates:, email: nil, first_name: nil, last_name: nil)
          #   @param caller_id_type [Symbol, HubspotSDK::Models::Crm::Extensions::ContactCallerID::CallerIDType] Specifies the type of caller ID, with the default value being CONTACT.
          #
          #   @param object_coordinates [HubspotSDK::Models::Crm::Extensions::ObjectCoordinates]
          #
          #   @param email [String] The email address of the contact.
          #
          #   @param first_name [String] The first name of the contact.
          #
          #   @param last_name [String] The last name of the contact.

          # Specifies the type of caller ID, with the default value being CONTACT.
          #
          # @see HubspotSDK::Models::Crm::Extensions::ContactCallerID#caller_id_type
          module CallerIDType
            extend HubspotSDK::Internal::Type::Enum

            CONTACT = :CONTACT

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end
      end
    end
  end
end
