# frozen_string_literal: true

module HubspotSDK
  module Models
    module Marketing
      module Transactional
        # @see HubspotSDK::Resources::Marketing::Transactional::SingleEmail#send_
        class SingleEmailSendParams < HubspotSDK::Models::Marketing::PublicSingleSendRequestEgg
          extend HubspotSDK::Internal::Type::RequestParameters::Converter
          include HubspotSDK::Internal::Type::RequestParameters

          # @!method initialize(request_options: {})
          #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
