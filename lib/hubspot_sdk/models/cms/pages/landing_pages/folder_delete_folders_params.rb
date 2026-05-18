# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Cms
      module Pages
        module LandingPages
          # @see HubSpotSDK::Resources::Cms::Pages::LandingPages::Folders#delete_folders
          class FolderDeleteFoldersParams < HubSpotSDK::Models::BatchInputString
            extend HubSpotSDK::Internal::Type::RequestParameters::Converter
            include HubSpotSDK::Internal::Type::RequestParameters

            # @!method initialize(request_options: {})
            #   @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}]
          end
        end
      end
    end
  end
end
