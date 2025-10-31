# frozen_string_literal: true

module HubspotSDK
  module Models
    module Conversations
      module CustomChannels
        # @see HubspotSDK::Resources::Conversations::CustomChannels::ChannelAccounts#create
        class ChannelAccountCreateParams < HubspotSDK::Models::Conversations::PublicChannelAccountEgg
          extend HubspotSDK::Internal::Type::RequestParameters::Converter
          include HubspotSDK::Internal::Type::RequestParameters

          # @!method initialize(request_options: {})
          #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
