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

        # The expected CNAME record for the domain.
        sig { returns(String) }
        attr_accessor :correct_cname

        # The date and time when the domain was created.
        sig { returns(Time) }
        attr_accessor :created

        # The actual domain or sub-domain. e.g. www.hubspot.com
        sig { returns(String) }
        attr_accessor :domain

        # Whether the DNS for this domain is optimally configured for use with HubSpot.
        sig { returns(T::Boolean) }
        attr_accessor :is_resolving

        # Indicates whether SSL is enabled for the domain.
        sig { returns(T::Boolean) }
        attr_accessor :is_ssl_enabled

        # Indicates whether the domain is accessible only via SSL.
        sig { returns(T::Boolean) }
        attr_accessor :is_ssl_only

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

        # Indicates whether the domain has been manually marked as resolving.
        sig { returns(T::Boolean) }
        attr_accessor :manually_marked_as_resolving

        # Indicates whether the domain is the primary domain for blog posts.
        sig { returns(T::Boolean) }
        attr_accessor :primary_blog_post

        # Indicates whether the domain is the primary domain for email pages.
        sig { returns(T::Boolean) }
        attr_accessor :primary_email

        # Indicates whether the domain is the primary domain for knowledge pages.
        sig { returns(T::Boolean) }
        attr_accessor :primary_knowledge

        # Indicates whether the domain is the primary domain for landing pages.
        sig { returns(T::Boolean) }
        attr_accessor :primary_landing_page

        # Indicates whether the domain is the primary domain for site pages.
        sig { returns(T::Boolean) }
        attr_accessor :primary_site_page

        # Specifies the domain to which this domain is secondary.
        sig { returns(String) }
        attr_accessor :secondary_to_domain

        # The date and time when the domain was last updated.
        sig { returns(Time) }
        attr_accessor :updated

        sig do
          params(
            id: String,
            correct_cname: String,
            created: Time,
            domain: String,
            is_resolving: T::Boolean,
            is_ssl_enabled: T::Boolean,
            is_ssl_only: T::Boolean,
            is_used_for_blog_post: T::Boolean,
            is_used_for_email: T::Boolean,
            is_used_for_knowledge: T::Boolean,
            is_used_for_landing_page: T::Boolean,
            is_used_for_site_page: T::Boolean,
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
          # The expected CNAME record for the domain.
          correct_cname:,
          # The date and time when the domain was created.
          created:,
          # The actual domain or sub-domain. e.g. www.hubspot.com
          domain:,
          # Whether the DNS for this domain is optimally configured for use with HubSpot.
          is_resolving:,
          # Indicates whether SSL is enabled for the domain.
          is_ssl_enabled:,
          # Indicates whether the domain is accessible only via SSL.
          is_ssl_only:,
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
          # Indicates whether the domain has been manually marked as resolving.
          manually_marked_as_resolving:,
          # Indicates whether the domain is the primary domain for blog posts.
          primary_blog_post:,
          # Indicates whether the domain is the primary domain for email pages.
          primary_email:,
          # Indicates whether the domain is the primary domain for knowledge pages.
          primary_knowledge:,
          # Indicates whether the domain is the primary domain for landing pages.
          primary_landing_page:,
          # Indicates whether the domain is the primary domain for site pages.
          primary_site_page:,
          # Specifies the domain to which this domain is secondary.
          secondary_to_domain:,
          # The date and time when the domain was last updated.
          updated:
        )
        end

        sig do
          override.returns(
            {
              id: String,
              correct_cname: String,
              created: Time,
              domain: String,
              is_resolving: T::Boolean,
              is_ssl_enabled: T::Boolean,
              is_ssl_only: T::Boolean,
              is_used_for_blog_post: T::Boolean,
              is_used_for_email: T::Boolean,
              is_used_for_knowledge: T::Boolean,
              is_used_for_landing_page: T::Boolean,
              is_used_for_site_page: T::Boolean,
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
