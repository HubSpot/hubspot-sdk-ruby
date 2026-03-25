# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      module ObjectLibrary
        # @see HubspotSDK::Resources::Crm::ObjectLibrary::Enablement#get_by_object_type_id
        class ObjectTypeEnablementPublicResponse < HubspotSDK::Internal::Type::BaseModel
          # @!attribute enablement
          #   Whether the object type is enabled or not
          #
          #   @return [Boolean]
          required :enablement, HubspotSDK::Internal::Type::Boolean

          # @!method initialize(enablement:)
          #   @param enablement [Boolean] Whether the object type is enabled or not
        end
      end
    end
  end
end
