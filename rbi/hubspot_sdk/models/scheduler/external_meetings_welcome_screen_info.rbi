# typed: strong

module HubspotSDK
  module Models
    module Scheduler
      class ExternalMeetingsWelcomeScreenInfo < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Scheduler::ExternalMeetingsWelcomeScreenInfo,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(String)) }
        attr_reader :description

        sig { params(description: String).void }
        attr_writer :description

        sig { returns(T.nilable(String)) }
        attr_reader :logo_url

        sig { params(logo_url: String).void }
        attr_writer :logo_url

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :show_welcome_screen

        sig { params(show_welcome_screen: T::Boolean).void }
        attr_writer :show_welcome_screen

        sig { returns(T.nilable(String)) }
        attr_reader :title

        sig { params(title: String).void }
        attr_writer :title

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
          description: nil,
          logo_url: nil,
          show_welcome_screen: nil,
          title: nil,
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
