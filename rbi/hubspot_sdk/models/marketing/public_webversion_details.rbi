# typed: strong

module HubspotSDK
  module Models
    module Marketing
      class PublicWebversionDetails < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Marketing::PublicWebversionDetails,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(String)) }
        attr_reader :domain

        sig { params(domain: String).void }
        attr_writer :domain

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :enabled

        sig { params(enabled: T::Boolean).void }
        attr_writer :enabled

        sig { returns(T.nilable(Time)) }
        attr_reader :expires_at

        sig { params(expires_at: Time).void }
        attr_writer :expires_at

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :is_page_redirected

        sig { params(is_page_redirected: T::Boolean).void }
        attr_writer :is_page_redirected

        sig { returns(T.nilable(String)) }
        attr_reader :meta_description

        sig { params(meta_description: String).void }
        attr_writer :meta_description

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :page_expiry_enabled

        sig { params(page_expiry_enabled: T::Boolean).void }
        attr_writer :page_expiry_enabled

        sig { returns(T.nilable(String)) }
        attr_reader :redirect_to_page_id

        sig { params(redirect_to_page_id: String).void }
        attr_writer :redirect_to_page_id

        sig { returns(T.nilable(String)) }
        attr_reader :redirect_to_url

        sig { params(redirect_to_url: String).void }
        attr_writer :redirect_to_url

        sig { returns(T.nilable(String)) }
        attr_reader :slug

        sig { params(slug: String).void }
        attr_writer :slug

        sig { returns(T.nilable(String)) }
        attr_reader :title

        sig { params(title: String).void }
        attr_writer :title

        sig { returns(T.nilable(String)) }
        attr_reader :url

        sig { params(url: String).void }
        attr_writer :url

        sig do
          params(
            domain: String,
            enabled: T::Boolean,
            expires_at: Time,
            is_page_redirected: T::Boolean,
            meta_description: String,
            page_expiry_enabled: T::Boolean,
            redirect_to_page_id: String,
            redirect_to_url: String,
            slug: String,
            title: String,
            url: String
          ).returns(T.attached_class)
        end
        def self.new(
          domain: nil,
          enabled: nil,
          expires_at: nil,
          is_page_redirected: nil,
          meta_description: nil,
          page_expiry_enabled: nil,
          redirect_to_page_id: nil,
          redirect_to_url: nil,
          slug: nil,
          title: nil,
          url: nil
        )
        end

        sig do
          override.returns(
            {
              domain: String,
              enabled: T::Boolean,
              expires_at: Time,
              is_page_redirected: T::Boolean,
              meta_description: String,
              page_expiry_enabled: T::Boolean,
              redirect_to_page_id: String,
              redirect_to_url: String,
              slug: String,
              title: String,
              url: String
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
