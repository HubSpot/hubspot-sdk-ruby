# typed: strong

module HubspotSDK
  module Models
    module Cms
      class Domain < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(HubspotSDK::Cms::Domain, HubspotSDK::Internal::AnyHash)
          end

        # The unique ID of this domain.
        sig { returns(String) }
        attr_accessor :id

        # The actual domain or sub-domain. e.g. www.hubspot.com
        sig { returns(String) }
        attr_accessor :domain

        # Whether the DNS for this domain is optimally configured for use with HubSpot.
        sig { returns(T::Boolean) }
        attr_accessor :is_resolving

        # Whether the domain is used for CMS blog posts.
        sig { returns(T::Boolean) }
        attr_accessor :is_used_for_blog_post

        # Whether the domain is used for CMS email web pages.
        sig { returns(T::Boolean) }
        attr_accessor :is_used_for_email

        # Whether the domain is used for CMS knowledge pages.
        sig { returns(T::Boolean) }
        attr_accessor :is_used_for_knowledge

        # Whether the domain is used for CMS landing pages.
        sig { returns(T::Boolean) }
        attr_accessor :is_used_for_landing_page

        # Whether the domain is used for CMS site pages.
        sig { returns(T::Boolean) }
        attr_accessor :is_used_for_site_page

        sig { returns(T.nilable(String)) }
        attr_reader :correct_cname

        sig { params(correct_cname: String).void }
        attr_writer :correct_cname

        sig { returns(T.nilable(Time)) }
        attr_reader :created

        sig { params(created: Time).void }
        attr_writer :created

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :is_ssl_enabled

        sig { params(is_ssl_enabled: T::Boolean).void }
        attr_writer :is_ssl_enabled

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :is_ssl_only

        sig { params(is_ssl_only: T::Boolean).void }
        attr_writer :is_ssl_only

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :manually_marked_as_resolving

        sig { params(manually_marked_as_resolving: T::Boolean).void }
        attr_writer :manually_marked_as_resolving

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :primary_blog_post

        sig { params(primary_blog_post: T::Boolean).void }
        attr_writer :primary_blog_post

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :primary_email

        sig { params(primary_email: T::Boolean).void }
        attr_writer :primary_email

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :primary_knowledge

        sig { params(primary_knowledge: T::Boolean).void }
        attr_writer :primary_knowledge

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :primary_landing_page

        sig { params(primary_landing_page: T::Boolean).void }
        attr_writer :primary_landing_page

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :primary_site_page

        sig { params(primary_site_page: T::Boolean).void }
        attr_writer :primary_site_page

        sig { returns(T.nilable(String)) }
        attr_reader :secondary_to_domain

        sig { params(secondary_to_domain: String).void }
        attr_writer :secondary_to_domain

        sig { returns(T.nilable(Time)) }
        attr_reader :updated

        sig { params(updated: Time).void }
        attr_writer :updated

        sig do
          params(
            id: String,
            domain: String,
            is_resolving: T::Boolean,
            is_used_for_blog_post: T::Boolean,
            is_used_for_email: T::Boolean,
            is_used_for_knowledge: T::Boolean,
            is_used_for_landing_page: T::Boolean,
            is_used_for_site_page: T::Boolean,
            correct_cname: String,
            created: Time,
            is_ssl_enabled: T::Boolean,
            is_ssl_only: T::Boolean,
            manually_marked_as_resolving: T::Boolean,
            primary_blog_post: T::Boolean,
            primary_email: T::Boolean,
            primary_knowledge: T::Boolean,
            primary_landing_page: T::Boolean,
            primary_site_page: T::Boolean,
            secondary_to_domain: String,
            updated: Time
          ).returns(T.attached_class)
        end
        def self.new(
          # The unique ID of this domain.
          id:,
          # The actual domain or sub-domain. e.g. www.hubspot.com
          domain:,
          # Whether the DNS for this domain is optimally configured for use with HubSpot.
          is_resolving:,
          # Whether the domain is used for CMS blog posts.
          is_used_for_blog_post:,
          # Whether the domain is used for CMS email web pages.
          is_used_for_email:,
          # Whether the domain is used for CMS knowledge pages.
          is_used_for_knowledge:,
          # Whether the domain is used for CMS landing pages.
          is_used_for_landing_page:,
          # Whether the domain is used for CMS site pages.
          is_used_for_site_page:,
          correct_cname: nil,
          created: nil,
          is_ssl_enabled: nil,
          is_ssl_only: nil,
          manually_marked_as_resolving: nil,
          primary_blog_post: nil,
          primary_email: nil,
          primary_knowledge: nil,
          primary_landing_page: nil,
          primary_site_page: nil,
          secondary_to_domain: nil,
          updated: nil
        )
        end

        sig do
          override.returns(
            {
              id: String,
              domain: String,
              is_resolving: T::Boolean,
              is_used_for_blog_post: T::Boolean,
              is_used_for_email: T::Boolean,
              is_used_for_knowledge: T::Boolean,
              is_used_for_landing_page: T::Boolean,
              is_used_for_site_page: T::Boolean,
              correct_cname: String,
              created: Time,
              is_ssl_enabled: T::Boolean,
              is_ssl_only: T::Boolean,
              manually_marked_as_resolving: T::Boolean,
              primary_blog_post: T::Boolean,
              primary_email: T::Boolean,
              primary_knowledge: T::Boolean,
              primary_landing_page: T::Boolean,
              primary_site_page: T::Boolean,
              secondary_to_domain: String,
              updated: Time
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
