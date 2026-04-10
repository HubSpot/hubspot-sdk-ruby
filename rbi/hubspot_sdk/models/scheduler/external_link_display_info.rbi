# typed: strong

module HubSpotSDK
  module Models
    module Scheduler
      class ExternalLinkDisplayInfo < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Scheduler::ExternalLinkDisplayInfo,
              HubSpotSDK::Internal::AnyHash
            )
          end

        # The URL of the user's custom uploaded avatar image.
        sig { returns(T.nilable(String)) }
        attr_reader :avatar

        sig { params(avatar: String).void }
        attr_writer :avatar

        # The URL of the company's avatar image.
        sig { returns(T.nilable(String)) }
        attr_reader :company_avatar

        sig { params(company_avatar: String).void }
        attr_writer :company_avatar

        # Deprecated field with no impact of link display info.
        sig { returns(T.nilable(String)) }
        attr_reader :headline

        sig { params(headline: String).void }
        attr_writer :headline

        # Option for determining which avatar to display on scheduling page. Accepted
        # values are: PROFILE_IMAGE, COMPANY_LOGO, CUSTOM_AVATAR,
        sig do
          returns(
            T.nilable(
              HubSpotSDK::Scheduler::ExternalLinkDisplayInfo::PublicDisplayAvatarOption::TaggedSymbol
            )
          )
        end
        attr_reader :public_display_avatar_option

        sig do
          params(
            public_display_avatar_option:
              HubSpotSDK::Scheduler::ExternalLinkDisplayInfo::PublicDisplayAvatarOption::OrSymbol
          ).void
        end
        attr_writer :public_display_avatar_option

        sig do
          params(
            avatar: String,
            company_avatar: String,
            headline: String,
            public_display_avatar_option:
              HubSpotSDK::Scheduler::ExternalLinkDisplayInfo::PublicDisplayAvatarOption::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(
          # The URL of the user's custom uploaded avatar image.
          avatar: nil,
          # The URL of the company's avatar image.
          company_avatar: nil,
          # Deprecated field with no impact of link display info.
          headline: nil,
          # Option for determining which avatar to display on scheduling page. Accepted
          # values are: PROFILE_IMAGE, COMPANY_LOGO, CUSTOM_AVATAR,
          public_display_avatar_option: nil
        )
        end

        sig do
          override.returns(
            {
              avatar: String,
              company_avatar: String,
              headline: String,
              public_display_avatar_option:
                HubSpotSDK::Scheduler::ExternalLinkDisplayInfo::PublicDisplayAvatarOption::TaggedSymbol
            }
          )
        end
        def to_hash
        end

        # Option for determining which avatar to display on scheduling page. Accepted
        # values are: PROFILE_IMAGE, COMPANY_LOGO, CUSTOM_AVATAR,
        module PublicDisplayAvatarOption
          extend HubSpotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubSpotSDK::Scheduler::ExternalLinkDisplayInfo::PublicDisplayAvatarOption
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          COMPANY_LOGO =
            T.let(
              :COMPANY_LOGO,
              HubSpotSDK::Scheduler::ExternalLinkDisplayInfo::PublicDisplayAvatarOption::TaggedSymbol
            )
          CUSTOM_AVATAR =
            T.let(
              :CUSTOM_AVATAR,
              HubSpotSDK::Scheduler::ExternalLinkDisplayInfo::PublicDisplayAvatarOption::TaggedSymbol
            )
          PROFILE_IMAGE =
            T.let(
              :PROFILE_IMAGE,
              HubSpotSDK::Scheduler::ExternalLinkDisplayInfo::PublicDisplayAvatarOption::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Scheduler::ExternalLinkDisplayInfo::PublicDisplayAvatarOption::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
