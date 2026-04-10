# typed: strong

module HubSpotSDK
  module Models
    module Scheduler
      class ExternalMeetingsWelcomeScreenInfo < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Scheduler::ExternalMeetingsWelcomeScreenInfo,
              HubSpotSDK::Internal::AnyHash
            )
          end

        # A brief description displayed the welcome screen below the title.
        sig { returns(T.nilable(String)) }
        attr_reader :description

        sig { params(description: String).void }
        attr_writer :description

        # The URL of the logo image to be displayed on the welcome screen, only used if
        # `useCompanyLogo` is false.
        sig { returns(T.nilable(String)) }
        attr_reader :logo_url

        sig { params(logo_url: String).void }
        attr_writer :logo_url

        # Deprecated property. Value can be ignored but will always be false.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :show_welcome_screen

        sig { params(show_welcome_screen: T::Boolean).void }
        attr_writer :show_welcome_screen

        # The main heading displayed on the welcome screen.
        sig { returns(T.nilable(String)) }
        attr_reader :title

        sig { params(title: String).void }
        attr_writer :title

        # Whether the company's logo should be displayed on the welcome screen.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :use_company_logo

        sig { params(use_company_logo: T::Boolean).void }
        attr_writer :use_company_logo

        sig do
          params(
            description: String,
            logo_url: String,
            show_welcome_screen: T::Boolean,
            title: String,
            use_company_logo: T::Boolean
          ).returns(T.attached_class)
        end
        def self.new(
          # A brief description displayed the welcome screen below the title.
          description: nil,
          # The URL of the logo image to be displayed on the welcome screen, only used if
          # `useCompanyLogo` is false.
          logo_url: nil,
          # Deprecated property. Value can be ignored but will always be false.
          show_welcome_screen: nil,
          # The main heading displayed on the welcome screen.
          title: nil,
          # Whether the company's logo should be displayed on the welcome screen.
          use_company_logo: nil
        )
        end

        sig do
          override.returns(
            {
              description: String,
              logo_url: String,
              show_welcome_screen: T::Boolean,
              title: String,
              use_company_logo: T::Boolean
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
