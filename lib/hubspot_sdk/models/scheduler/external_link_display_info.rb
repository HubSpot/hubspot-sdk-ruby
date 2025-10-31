# frozen_string_literal: true

module HubspotSDK
  module Models
    module Scheduler
      class ExternalLinkDisplayInfo < HubspotSDK::Internal::Type::BaseModel
        # @!attribute avatar
        #
        #   @return [String, nil]
        optional :avatar, String

        # @!attribute company_avatar
        #
        #   @return [String, nil]
        optional :company_avatar, String, api_name: :companyAvatar

        # @!attribute headline
        #
        #   @return [String, nil]
        optional :headline, String

        # @!attribute public_display_avatar_option
        #
        #   @return [String, nil]
        optional :public_display_avatar_option, String, api_name: :publicDisplayAvatarOption

        # @!method initialize(avatar: nil, company_avatar: nil, headline: nil, public_display_avatar_option: nil)
        #   @param avatar [String]
        #   @param company_avatar [String]
        #   @param headline [String]
        #   @param public_display_avatar_option [String]
      end
    end
  end
end
