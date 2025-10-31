# frozen_string_literal: true

module HubspotSDK
  module Models
    module CRM
      module ObjectLibrary
        # @see HubspotSDK::Resources::CRM::ObjectLibrary::Enablement#get
        class EnablementGetResponse < HubspotSDK::Internal::Type::BaseModel
          # @!attribute enablement
          #
          #   @return [Boolean]
          required :enablement, HubspotSDK::Internal::Type::Boolean

          # @!method initialize(enablement:)
          #   @param enablement [Boolean]
        end
      end
    end
  end
end
