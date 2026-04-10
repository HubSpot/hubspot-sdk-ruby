# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Crm
      module ObjectLibrary
        # @see HubSpotSDK::Resources::Crm::ObjectLibrary::Enablement#get_by_object_type_id
        class ObjectTypeEnablementPublicResponse < HubSpotSDK::Internal::Type::BaseModel
          # @!attribute enablement
          #   Whether the object type is enabled or not
          #
          #   @return [Boolean]
          required :enablement, HubSpotSDK::Internal::Type::Boolean

          # @!method initialize(enablement:)
          #   @param enablement [Boolean] Whether the object type is enabled or not
        end
      end
    end
  end
end
