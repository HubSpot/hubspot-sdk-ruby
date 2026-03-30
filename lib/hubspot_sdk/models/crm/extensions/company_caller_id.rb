# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      module Extensions
        class CompanyCallerID < HubspotSDK::Internal::Type::BaseModel
          # @!attribute caller_id_type
          #   Specifies the type of caller ID, which is set to 'COMPANY' by default.
          #
          #   @return [Symbol, HubspotSDK::Models::Crm::Extensions::CompanyCallerID::CallerIDType]
          required :caller_id_type,
                   enum: -> { HubspotSDK::Crm::Extensions::CompanyCallerID::CallerIDType },
                   api_name: :callerIdType

          # @!attribute object_coordinates
          #
          #   @return [HubspotSDK::Models::Crm::Extensions::ObjectCoordinates]
          required :object_coordinates,
                   -> { HubspotSDK::Crm::Extensions::ObjectCoordinates },
                   api_name: :objectCoordinates

          # @!attribute name
          #   The name associated with the company caller ID.
          #
          #   @return [String, nil]
          optional :name, String

          # @!method initialize(caller_id_type:, object_coordinates:, name: nil)
          #   @param caller_id_type [Symbol, HubspotSDK::Models::Crm::Extensions::CompanyCallerID::CallerIDType] Specifies the type of caller ID, which is set to 'COMPANY' by default.
          #
          #   @param object_coordinates [HubspotSDK::Models::Crm::Extensions::ObjectCoordinates]
          #
          #   @param name [String] The name associated with the company caller ID.

          # Specifies the type of caller ID, which is set to 'COMPANY' by default.
          #
          # @see HubspotSDK::Models::Crm::Extensions::CompanyCallerID#caller_id_type
          module CallerIDType
            extend HubspotSDK::Internal::Type::Enum

            COMPANY = :COMPANY

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end
      end
    end
  end
end
