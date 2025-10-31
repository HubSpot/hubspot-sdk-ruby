# typed: strong

module HubspotSDK
  module Models
    module Scheduler
      class ExternalLinkDisplayInfo < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Scheduler::ExternalLinkDisplayInfo,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(String)) }
        attr_reader :avatar

        sig { params(avatar: String).void }
        attr_writer :avatar

        sig { returns(T.nilable(String)) }
        attr_reader :company_avatar

        sig { params(company_avatar: String).void }
        attr_writer :company_avatar

        sig { returns(T.nilable(String)) }
        attr_reader :headline

        sig { params(headline: String).void }
        attr_writer :headline

        sig { returns(T.nilable(String)) }
        attr_reader :public_display_avatar_option

        sig { params(public_display_avatar_option: String).void }
        attr_writer :public_display_avatar_option

        sig do
          params(
            avatar: String,
            company_avatar: String,
            headline: String,
            public_display_avatar_option: String
          ).returns(T.attached_class)
        end
        def self.new(
          avatar: nil,
          company_avatar: nil,
          headline: nil,
          public_display_avatar_option: nil
        )
        end

        sig do
          override.returns(
            {
              avatar: String,
              company_avatar: String,
              headline: String,
              public_display_avatar_option: String
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
