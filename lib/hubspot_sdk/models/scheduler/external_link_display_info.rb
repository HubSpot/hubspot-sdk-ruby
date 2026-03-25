# frozen_string_literal: true

module HubspotSDK
  module Models
    module Scheduler
      class ExternalLinkDisplayInfo < HubspotSDK::Internal::Type::BaseModel
        # @!attribute avatar
        #   The URL of the user's custom uploaded avatar image.
        #
        #   @return [String, nil]
        optional :avatar, String

        # @!attribute company_avatar
        #   The URL of the company's avatar image.
        #
        #   @return [String, nil]
        optional :company_avatar, String, api_name: :companyAvatar

        # @!attribute headline
        #   Deprecated field with no impact of link display info.
        #
        #   @return [String, nil]
        optional :headline, String

        # @!attribute public_display_avatar_option
        #   Option for determining which avatar to display on scheduling page. Accepted
        #   values are: PROFILE_IMAGE, COMPANY_LOGO, CUSTOM_AVATAR,
        #
        #   @return [Symbol, HubspotSDK::Models::Scheduler::ExternalLinkDisplayInfo::PublicDisplayAvatarOption, nil]
        optional :public_display_avatar_option,
                 enum: -> { HubspotSDK::Scheduler::ExternalLinkDisplayInfo::PublicDisplayAvatarOption },
                 api_name: :publicDisplayAvatarOption

        # @!method initialize(avatar: nil, company_avatar: nil, headline: nil, public_display_avatar_option: nil)
        #   Some parameter documentations has been truncated, see
        #   {HubspotSDK::Models::Scheduler::ExternalLinkDisplayInfo} for more details.
        #
        #   @param avatar [String] The URL of the user's custom uploaded avatar image.
        #
        #   @param company_avatar [String] The URL of the company's avatar image.
        #
        #   @param headline [String] Deprecated field with no impact of link display info.
        #
        #   @param public_display_avatar_option [Symbol, HubspotSDK::Models::Scheduler::ExternalLinkDisplayInfo::PublicDisplayAvatarOption] Option for determining which avatar to display on scheduling page. Accepted valu

        # Option for determining which avatar to display on scheduling page. Accepted
        # values are: PROFILE_IMAGE, COMPANY_LOGO, CUSTOM_AVATAR,
        #
        # @see HubspotSDK::Models::Scheduler::ExternalLinkDisplayInfo#public_display_avatar_option
        module PublicDisplayAvatarOption
          extend HubspotSDK::Internal::Type::Enum

          COMPANY_LOGO = :COMPANY_LOGO
          CUSTOM_AVATAR = :CUSTOM_AVATAR
          PROFILE_IMAGE = :PROFILE_IMAGE

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
