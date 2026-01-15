# typed: strong

module HubspotSDK
  module Resources
    class Cms
      class Pages
        class SitePages
          # Create a new Site Page
          sig do
            params(
              id: String,
              ab_status: HubspotSDK::Cms::Page::AbStatus::OrSymbol,
              ab_test_id: String,
              archived_at: Time,
              archived_in_dashboard: T::Boolean,
              attached_stylesheets: T::Array[T::Hash[Symbol, T.anything]],
              author_name: String,
              campaign: String,
              category_id: Integer,
              content_group_id: String,
              content_type_category:
                HubspotSDK::Cms::Page::ContentTypeCategory::OrSymbol,
              created: Time,
              created_by_id: String,
              currently_published: T::Boolean,
              current_state: HubspotSDK::Cms::Page::CurrentState::OrSymbol,
              domain: String,
              dynamic_page_data_source_id: String,
              dynamic_page_data_source_type: Integer,
              dynamic_page_hub_db_table_id: String,
              enable_domain_stylesheets: T::Boolean,
              enable_layout_stylesheets: T::Boolean,
              featured_image: String,
              featured_image_alt_text: String,
              folder_id: String,
              footer_html: String,
              head_html: String,
              html_title: String,
              include_default_custom_css: T::Boolean,
              language: HubspotSDK::Cms::Page::Language::OrSymbol,
              layout_sections:
                T::Hash[Symbol, HubspotSDK::Cms::LayoutSection::OrHash],
              link_rel_canonical_url: String,
              mab_experiment_id: String,
              meta_description: String,
              name: String,
              page_expiry_date: Integer,
              page_expiry_enabled: T::Boolean,
              page_expiry_redirect_id: Integer,
              page_expiry_redirect_url: String,
              page_redirected: T::Boolean,
              password: String,
              public_access_rules: T::Array[T.anything],
              public_access_rules_enabled: T::Boolean,
              publish_date: Time,
              publish_immediately: T::Boolean,
              slug: String,
              state: String,
              subcategory: String,
              template_path: String,
              theme_settings_values: T::Hash[Symbol, T.anything],
              translated_from_id: String,
              translations:
                T::Hash[
                  Symbol,
                  HubspotSDK::Cms::PagesContentLanguageVariation::OrHash
                ],
              updated: Time,
              updated_by_id: String,
              url: String,
              use_featured_image: T::Boolean,
              widget_containers: T::Hash[Symbol, T.anything],
              widgets: T::Hash[Symbol, T.anything],
              request_options: HubspotSDK::RequestOptions::OrHash
            ).void
          end
          def create(
            # The unique ID of the page.
            id:,
            # The status of the AB test associated with this page, if applicable
            ab_status:,
            # The ID of the AB test associated with this page, if applicable
            ab_test_id:,
            # The timestamp (ISO8601 format) when this page was deleted.
            archived_at:,
            # If True, the page will not show up in your dashboard, although the page could
            # still be live.
            archived_in_dashboard:,
            # List of stylesheets to attach to this page. These stylesheets are attached to
            # just this page. Order of precedence is bottom to top, just like in the HTML.
            attached_stylesheets:,
            # The name of the user that updated this page.
            author_name:,
            # The GUID of the marketing campaign this page is a part of.
            campaign:,
            # ID of the type of object this is. Should always .
            category_id:,
            content_group_id:,
            # An ENUM descibing the type of this object. Should be either LANDING_PAGE or
            # SITE_PAGE.
            content_type_category:,
            created:,
            # The ID of the user that created this page.
            created_by_id:,
            currently_published:,
            # A generated ENUM descibing the current state of this page.
            current_state:,
            # The domain this page will resolve to. If null, the page will default to the
            # primary domain for this content type.
            domain:,
            dynamic_page_data_source_id:,
            dynamic_page_data_source_type:,
            # The ID of the HubDB table this page references, if applicable
            dynamic_page_hub_db_table_id:,
            # Boolean to determine whether or not the styles from the template should be
            # applied.
            enable_domain_stylesheets:,
            # Boolean to determine whether or not the styles from the template should be
            # applied.
            enable_layout_stylesheets:,
            # The featuredImage of this page.
            featured_image:,
            # Alt Text of the featuredImage.
            featured_image_alt_text:,
            # The ID of the associated folder this landing page is organized under in the app
            # dashboard.
            folder_id:,
            # Custom HTML for embed codes, javascript that should be placed before the </body>
            # tag of the page.
            footer_html:,
            # Custom HTML for embed codes, javascript, etc. that goes in the <head> tag of the
            # page.
            head_html:,
            # The html title of this page.
            html_title:,
            # Boolean to determine whether or not the Primary CSS Files should be applied.
            include_default_custom_css:,
            # The explicitly defined ISO 639 language code of the page. If null, the page will
            # default to the language of the Domain.
            language:,
            layout_sections:,
            # Optional override to set the URL to be used in the rel=canonical link tag on the
            # page.
            link_rel_canonical_url:,
            # The ID of the MAB test (or dynamic test) associated with this page, if
            # applicable
            mab_experiment_id:,
            # A description that goes in <meta> tag on the page.
            meta_description:,
            # The internal name of the page.
            name:,
            # The date at which this page should expire and begin redirecting to another url
            # or page.
            page_expiry_date:,
            # Boolean describing if the page expiration feature is enabled for this page
            page_expiry_enabled:,
            # The ID of another page this page's url should redirect to once this page
            # expires. Should only set this or pageExpiryRedirectUrl.
            page_expiry_redirect_id:,
            # The URL this page's url should redirect to once this page expires. Should only
            # set this or pageExpiryRedirectId.
            page_expiry_redirect_url:,
            # A generated Boolean describing whether or not this page is currently expired and
            # being redirected.
            page_redirected:,
            # Set this to create a password protected page. Entering the password will be
            # required to view the page.
            password:,
            # Rules for require member registration to access private content.
            public_access_rules:,
            # Boolean to determine whether or not to respect publicAccessRules.
            public_access_rules_enabled:,
            # The date (ISO8601 format) the page is to be published at.
            publish_date:,
            # Set this to true if you want to be published immediately when the schedule
            # publish endpoint is called, and to ignore the publish_date setting.
            publish_immediately:,
            # The path of the this page. This field is appended to the domain to construct the
            # url of this page.
            slug:,
            # An ENUM descibing the current state of this page.
            state:,
            # Details the type of page this is. Should always be landing_page or site_page
            subcategory:,
            # String detailing the path of the template used for this page.
            template_path:,
            theme_settings_values:,
            # ID of the primary page this object was translated from.
            translated_from_id:,
            translations:,
            updated:,
            # The ID of the user that updated this page.
            updated_by_id:,
            # A generated field representing the URL of this page.
            url:,
            # Boolean to determine if this page should use a featuredImage.
            use_featured_image:,
            # A data structure containing the data for all the modules inside the containers
            # for this page. This will only be populated if the page has widget containers.
            widget_containers:,
            # A data structure containing the data for all the modules for this page.
            widgets:,
            request_options: {}
          )
          end

          # Sparse updates a single Site Page object identified by the id in the path. You
          # only need to specify the column values that you are modifying.
          sig do
            params(
              object_id_: String,
              id: String,
              ab_status: HubspotSDK::Cms::Page::AbStatus::OrSymbol,
              ab_test_id: String,
              archived_at: Time,
              archived_in_dashboard: T::Boolean,
              attached_stylesheets: T::Array[T::Hash[Symbol, T.anything]],
              author_name: String,
              campaign: String,
              category_id: Integer,
              content_group_id: String,
              content_type_category:
                HubspotSDK::Cms::Page::ContentTypeCategory::OrSymbol,
              created: Time,
              created_by_id: String,
              currently_published: T::Boolean,
              current_state: HubspotSDK::Cms::Page::CurrentState::OrSymbol,
              domain: String,
              dynamic_page_data_source_id: String,
              dynamic_page_data_source_type: Integer,
              dynamic_page_hub_db_table_id: String,
              enable_domain_stylesheets: T::Boolean,
              enable_layout_stylesheets: T::Boolean,
              featured_image: String,
              featured_image_alt_text: String,
              folder_id: String,
              footer_html: String,
              head_html: String,
              html_title: String,
              include_default_custom_css: T::Boolean,
              language: HubspotSDK::Cms::Page::Language::OrSymbol,
              layout_sections:
                T::Hash[Symbol, HubspotSDK::Cms::LayoutSection::OrHash],
              link_rel_canonical_url: String,
              mab_experiment_id: String,
              meta_description: String,
              name: String,
              page_expiry_date: Integer,
              page_expiry_enabled: T::Boolean,
              page_expiry_redirect_id: Integer,
              page_expiry_redirect_url: String,
              page_redirected: T::Boolean,
              password: String,
              public_access_rules: T::Array[T.anything],
              public_access_rules_enabled: T::Boolean,
              publish_date: Time,
              publish_immediately: T::Boolean,
              slug: String,
              state: String,
              subcategory: String,
              template_path: String,
              theme_settings_values: T::Hash[Symbol, T.anything],
              translated_from_id: String,
              translations:
                T::Hash[
                  Symbol,
                  HubspotSDK::Cms::PagesContentLanguageVariation::OrHash
                ],
              updated: Time,
              updated_by_id: String,
              url: String,
              use_featured_image: T::Boolean,
              widget_containers: T::Hash[Symbol, T.anything],
              widgets: T::Hash[Symbol, T.anything],
              archived: T::Boolean,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(HubspotSDK::Cms::Page)
          end
          def update(
            # Path param: The Site Page id.
            object_id_,
            # Body param: The unique ID of the page.
            id:,
            # Body param: The status of the AB test associated with this page, if applicable
            ab_status:,
            # Body param: The ID of the AB test associated with this page, if applicable
            ab_test_id:,
            # Body param: The timestamp (ISO8601 format) when this page was deleted.
            archived_at:,
            # Body param: If True, the page will not show up in your dashboard, although the
            # page could still be live.
            archived_in_dashboard:,
            # Body param: List of stylesheets to attach to this page. These stylesheets are
            # attached to just this page. Order of precedence is bottom to top, just like in
            # the HTML.
            attached_stylesheets:,
            # Body param: The name of the user that updated this page.
            author_name:,
            # Body param: The GUID of the marketing campaign this page is a part of.
            campaign:,
            # Body param: ID of the type of object this is. Should always .
            category_id:,
            # Body param
            content_group_id:,
            # Body param: An ENUM descibing the type of this object. Should be either
            # LANDING_PAGE or SITE_PAGE.
            content_type_category:,
            # Body param
            created:,
            # Body param: The ID of the user that created this page.
            created_by_id:,
            # Body param
            currently_published:,
            # Body param: A generated ENUM descibing the current state of this page.
            current_state:,
            # Body param: The domain this page will resolve to. If null, the page will default
            # to the primary domain for this content type.
            domain:,
            # Body param
            dynamic_page_data_source_id:,
            # Body param
            dynamic_page_data_source_type:,
            # Body param: The ID of the HubDB table this page references, if applicable
            dynamic_page_hub_db_table_id:,
            # Body param: Boolean to determine whether or not the styles from the template
            # should be applied.
            enable_domain_stylesheets:,
            # Body param: Boolean to determine whether or not the styles from the template
            # should be applied.
            enable_layout_stylesheets:,
            # Body param: The featuredImage of this page.
            featured_image:,
            # Body param: Alt Text of the featuredImage.
            featured_image_alt_text:,
            # Body param: The ID of the associated folder this landing page is organized under
            # in the app dashboard.
            folder_id:,
            # Body param: Custom HTML for embed codes, javascript that should be placed before
            # the </body> tag of the page.
            footer_html:,
            # Body param: Custom HTML for embed codes, javascript, etc. that goes in the
            # <head> tag of the page.
            head_html:,
            # Body param: The html title of this page.
            html_title:,
            # Body param: Boolean to determine whether or not the Primary CSS Files should be
            # applied.
            include_default_custom_css:,
            # Body param: The explicitly defined ISO 639 language code of the page. If null,
            # the page will default to the language of the Domain.
            language:,
            # Body param
            layout_sections:,
            # Body param: Optional override to set the URL to be used in the rel=canonical
            # link tag on the page.
            link_rel_canonical_url:,
            # Body param: The ID of the MAB test (or dynamic test) associated with this page,
            # if applicable
            mab_experiment_id:,
            # Body param: A description that goes in <meta> tag on the page.
            meta_description:,
            # Body param: The internal name of the page.
            name:,
            # Body param: The date at which this page should expire and begin redirecting to
            # another url or page.
            page_expiry_date:,
            # Body param: Boolean describing if the page expiration feature is enabled for
            # this page
            page_expiry_enabled:,
            # Body param: The ID of another page this page's url should redirect to once this
            # page expires. Should only set this or pageExpiryRedirectUrl.
            page_expiry_redirect_id:,
            # Body param: The URL this page's url should redirect to once this page expires.
            # Should only set this or pageExpiryRedirectId.
            page_expiry_redirect_url:,
            # Body param: A generated Boolean describing whether or not this page is currently
            # expired and being redirected.
            page_redirected:,
            # Body param: Set this to create a password protected page. Entering the password
            # will be required to view the page.
            password:,
            # Body param: Rules for require member registration to access private content.
            public_access_rules:,
            # Body param: Boolean to determine whether or not to respect publicAccessRules.
            public_access_rules_enabled:,
            # Body param: The date (ISO8601 format) the page is to be published at.
            publish_date:,
            # Body param: Set this to true if you want to be published immediately when the
            # schedule publish endpoint is called, and to ignore the publish_date setting.
            publish_immediately:,
            # Body param: The path of the this page. This field is appended to the domain to
            # construct the url of this page.
            slug:,
            # Body param: An ENUM descibing the current state of this page.
            state:,
            # Body param: Details the type of page this is. Should always be landing_page or
            # site_page
            subcategory:,
            # Body param: String detailing the path of the template used for this page.
            template_path:,
            # Body param
            theme_settings_values:,
            # Body param: ID of the primary page this object was translated from.
            translated_from_id:,
            # Body param
            translations:,
            # Body param
            updated:,
            # Body param: The ID of the user that updated this page.
            updated_by_id:,
            # Body param: A generated field representing the URL of this page.
            url:,
            # Body param: Boolean to determine if this page should use a featuredImage.
            use_featured_image:,
            # Body param: A data structure containing the data for all the modules inside the
            # containers for this page. This will only be populated if the page has widget
            # containers.
            widget_containers:,
            # Body param: A data structure containing the data for all the modules for this
            # page.
            widgets:,
            # Query param: Specifies whether to update deleted Site Pages. Defaults to
            # `false`.
            archived: nil,
            request_options: {}
          )
          end

          # Get the list of site pages. Supports paging and filtering. This method would be
          # useful for an integration that examined these models and used an external
          # service to suggest edits.
          sig do
            params(
              after: String,
              archived: T::Boolean,
              created_after: Time,
              created_at: Time,
              created_before: Time,
              limit: Integer,
              property: String,
              sort: T::Array[String],
              updated_after: Time,
              updated_at: Time,
              updated_before: Time,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(HubspotSDK::Internal::Page[HubspotSDK::Cms::Page])
          end
          def list(
            # The cursor token value to get the next set of results. You can get this from the
            # `paging.next.after` JSON property of a paged response containing more results.
            after: nil,
            # Specifies whether to return deleted Site Pages. Defaults to `false`.
            archived: nil,
            # Only return Site Pages created after the specified time.
            created_after: nil,
            # Only return Site Pages created at exactly the specified time.
            created_at: nil,
            # Only return Site Pages created before the specified time.
            created_before: nil,
            # The maximum number of results to return. Default is 100.
            limit: nil,
            property: nil,
            # Specifies which fields to use for sorting results. Valid fields are `name`,
            # `createdAt`, `updatedAt`, `createdBy`, `updatedBy`. `createdAt` will be used by
            # default.
            sort: nil,
            # Only return Site Pages last updated after the specified time.
            updated_after: nil,
            # Only return Site Pages last updated at exactly the specified time.
            updated_at: nil,
            # Only return Site Pages last updated before the specified time.
            updated_before: nil,
            request_options: {}
          )
          end

          # Delete the Site Page object identified by the id in the path.
          sig do
            params(
              object_id_: String,
              archived: T::Boolean,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).void
          end
          def delete(
            # The Site Page id.
            object_id_,
            # Whether to return only results that have been archived.
            archived: nil,
            request_options: {}
          )
          end

          # Attach a site page to a multi-language group.
          sig do
            params(
              id: String,
              language: String,
              primary_id: String,
              primary_language: String,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).void
          end
          def attach_to_lang_group(
            # ID of the object to add to a multi-language group.
            id:,
            # Designated language of the object to add to a multi-language group.
            language:,
            # ID of primary language object in multi-language group.
            primary_id:,
            # Primary language of the multi-language group.
            primary_language: nil,
            request_options: {}
          )
          end

          # Clone a Site Page
          sig do
            params(
              id: String,
              clone_name: String,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(HubspotSDK::Cms::Page)
          end
          def clone_(
            # ID of the object to be cloned.
            id:,
            # Name of the cloned object.
            clone_name: nil,
            request_options: {}
          )
          end

          # Create a new A/B test variation based on the information provided in the request
          # body.
          sig do
            params(
              content_id: String,
              variation_name: String,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(HubspotSDK::Cms::Page)
          end
          def create_ab_test_variation(
            # ID of the object to test.
            content_id:,
            # Name of A/B test variation.
            variation_name:,
            request_options: {}
          )
          end

          # Create the Site Page objects detailed in the request body.
          sig do
            params(
              inputs: T::Array[HubspotSDK::Cms::Page::OrHash],
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(HubspotSDK::Cms::BatchResponsePage)
          end
          def create_batch(
            # Pages to input.
            inputs:,
            request_options: {}
          )
          end

          # Create a new language variation from an existing site page
          sig do
            params(
              id: String,
              language: String,
              primary_language: String,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(HubspotSDK::Cms::Page)
          end
          def create_language_variation(
            # ID of content to clone.
            id:,
            # Target language of new variant.
            language: nil,
            # Language of primary content to clone.
            primary_language: nil,
            request_options: {}
          )
          end

          # Delete the Site Page objects identified in the request body. Note: This is not
          # the same as the dashboard `archive` function. To perform a dashboard `archive`
          # send an normal update with the `archivedInDashboard` field set to true.
          sig do
            params(
              inputs: T::Array[String],
              request_options: HubspotSDK::RequestOptions::OrHash
            ).void
          end
          def delete_batch(
            # Strings to input.
            inputs:,
            request_options: {}
          )
          end

          # Detach a site page from a multi-language group.
          sig do
            params(
              id: String,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).void
          end
          def detach_from_lang_group(
            # ID of the object to remove from a multi-language group.
            id:,
            request_options: {}
          )
          end

          # End an active A/B test and designate a winner.
          sig do
            params(
              ab_test_id: String,
              winner_id: String,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).void
          end
          def end_ab_test(
            # ID of the test to end.
            ab_test_id:,
            # ID of the object to designate as the test winner.
            winner_id:,
            request_options: {}
          )
          end

          # Retrieve the Site Page object identified by the id in the path.
          sig do
            params(
              object_id_: String,
              archived: T::Boolean,
              property: String,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(HubspotSDK::Cms::Page)
          end
          def get(
            # The Site Page id.
            object_id_,
            # Specifies whether to return deleted Site Pages. Defaults to `false`.
            archived: nil,
            property: nil,
            request_options: {}
          )
          end

          # Retrieve the Site Page objects identified in the request body.
          sig do
            params(
              inputs: T::Array[String],
              archived: T::Boolean,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(HubspotSDK::Cms::BatchResponsePage)
          end
          def get_batch(
            # Body param: Strings to input.
            inputs:,
            # Query param: Specifies whether to return deleted Site Pages. Defaults to
            # `false`.
            archived: nil,
            request_options: {}
          )
          end

          # Retrieve the full draft version of the Site Page.
          sig do
            params(
              object_id_: String,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(HubspotSDK::Cms::Page)
          end
          def get_draft(
            # The Site Page id.
            object_id_,
            request_options: {}
          )
          end

          # Retrieves a previous version of a Site Page
          sig do
            params(
              revision_id: String,
              object_id_: String,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(HubspotSDK::Cms::VersionPage)
          end
          def get_revision(
            # The Site Page version id.
            revision_id,
            # The Site Page id.
            object_id_:,
            request_options: {}
          )
          end

          # Retrieves all the previous versions of a Site Page.
          sig do
            params(
              object_id_: String,
              after: String,
              before: String,
              limit: Integer,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(HubspotSDK::Internal::Page[HubspotSDK::Cms::VersionPage])
          end
          def list_revisions(
            # The Site Page id.
            object_id_,
            # The cursor token value to get the next set of results. You can get this from the
            # `paging.next.after` JSON property of a paged response containing more results.
            after: nil,
            before: nil,
            # The maximum number of results to return. Default is 100.
            limit: nil,
            request_options: {}
          )
          end

          # Take any changes from the draft version of the Site Page and apply them to the
          # live version.
          sig do
            params(
              object_id_: String,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).void
          end
          def publish_draft(
            # The id of the Site Page for which it's draft will be pushed live.
            object_id_,
            request_options: {}
          )
          end

          # Rerun a previous A/B test.
          sig do
            params(
              ab_test_id: String,
              variation_id: String,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).void
          end
          def rerun_ab_test(
            # ID of the test to rerun.
            ab_test_id:,
            # ID of the object to reactivate as a test variation.
            variation_id:,
            request_options: {}
          )
          end

          # Discards any edits and resets the draft to the live version.
          sig do
            params(
              object_id_: String,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).void
          end
          def reset_draft(
            # The id of the Site Page for which it's draft will be reset.
            object_id_,
            request_options: {}
          )
          end

          # Takes a specified version of a Site Page and restores it.
          sig do
            params(
              revision_id: String,
              object_id_: String,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(HubspotSDK::Cms::Page)
          end
          def restore_revision(
            # The Site Page version id to restore.
            revision_id,
            # The Site Page id.
            object_id_:,
            request_options: {}
          )
          end

          # Takes a specified version of a Site Page, sets it as the new draft version of
          # the Site Page.
          sig do
            params(
              revision_id: Integer,
              object_id_: String,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(HubspotSDK::Cms::Page)
          end
          def restore_revision_to_draft(
            # The Site Page version id to restore.
            revision_id,
            # The Site Page id.
            object_id_:,
            request_options: {}
          )
          end

          # Schedule a Site Page to be Published
          sig do
            params(
              id: String,
              publish_date: Time,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).void
          end
          def schedule(
            # The ID of the object to be scheduled.
            id:,
            # The date the object should transition from scheduled to published.
            publish_date:,
            request_options: {}
          )
          end

          # Set a site page as the primary language of a multi-language group.
          sig do
            params(
              id: String,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).void
          end
          def set_new_lang_primary(
            # ID of object to set as primary in multi-language group.
            id:,
            request_options: {}
          )
          end

          # Update the Site Page objects identified in the request body.
          sig do
            params(
              inputs: T::Array[T.anything],
              archived: T::Boolean,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(HubspotSDK::Cms::BatchResponsePage)
          end
          def update_batch(
            # Body param: JSON nodes to input.
            inputs:,
            # Query param: Specifies whether to update deleted Site Pages. Defaults to
            # `false`.
            archived: nil,
            request_options: {}
          )
          end

          # Sparse updates the draft version of a single Site Page object identified by the
          # id in the path. You only need to specify the column values that you are
          # modifying.
          sig do
            params(
              object_id_: String,
              id: String,
              ab_status: HubspotSDK::Cms::Page::AbStatus::OrSymbol,
              ab_test_id: String,
              archived_at: Time,
              archived_in_dashboard: T::Boolean,
              attached_stylesheets: T::Array[T::Hash[Symbol, T.anything]],
              author_name: String,
              campaign: String,
              category_id: Integer,
              content_group_id: String,
              content_type_category:
                HubspotSDK::Cms::Page::ContentTypeCategory::OrSymbol,
              created: Time,
              created_by_id: String,
              currently_published: T::Boolean,
              current_state: HubspotSDK::Cms::Page::CurrentState::OrSymbol,
              domain: String,
              dynamic_page_data_source_id: String,
              dynamic_page_data_source_type: Integer,
              dynamic_page_hub_db_table_id: String,
              enable_domain_stylesheets: T::Boolean,
              enable_layout_stylesheets: T::Boolean,
              featured_image: String,
              featured_image_alt_text: String,
              folder_id: String,
              footer_html: String,
              head_html: String,
              html_title: String,
              include_default_custom_css: T::Boolean,
              language: HubspotSDK::Cms::Page::Language::OrSymbol,
              layout_sections:
                T::Hash[Symbol, HubspotSDK::Cms::LayoutSection::OrHash],
              link_rel_canonical_url: String,
              mab_experiment_id: String,
              meta_description: String,
              name: String,
              page_expiry_date: Integer,
              page_expiry_enabled: T::Boolean,
              page_expiry_redirect_id: Integer,
              page_expiry_redirect_url: String,
              page_redirected: T::Boolean,
              password: String,
              public_access_rules: T::Array[T.anything],
              public_access_rules_enabled: T::Boolean,
              publish_date: Time,
              publish_immediately: T::Boolean,
              slug: String,
              state: String,
              subcategory: String,
              template_path: String,
              theme_settings_values: T::Hash[Symbol, T.anything],
              translated_from_id: String,
              translations:
                T::Hash[
                  Symbol,
                  HubspotSDK::Cms::PagesContentLanguageVariation::OrHash
                ],
              updated: Time,
              updated_by_id: String,
              url: String,
              use_featured_image: T::Boolean,
              widget_containers: T::Hash[Symbol, T.anything],
              widgets: T::Hash[Symbol, T.anything],
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(HubspotSDK::Cms::Page)
          end
          def update_draft(
            # The Site Page id.
            object_id_,
            # The unique ID of the page.
            id:,
            # The status of the AB test associated with this page, if applicable
            ab_status:,
            # The ID of the AB test associated with this page, if applicable
            ab_test_id:,
            # The timestamp (ISO8601 format) when this page was deleted.
            archived_at:,
            # If True, the page will not show up in your dashboard, although the page could
            # still be live.
            archived_in_dashboard:,
            # List of stylesheets to attach to this page. These stylesheets are attached to
            # just this page. Order of precedence is bottom to top, just like in the HTML.
            attached_stylesheets:,
            # The name of the user that updated this page.
            author_name:,
            # The GUID of the marketing campaign this page is a part of.
            campaign:,
            # ID of the type of object this is. Should always .
            category_id:,
            content_group_id:,
            # An ENUM descibing the type of this object. Should be either LANDING_PAGE or
            # SITE_PAGE.
            content_type_category:,
            created:,
            # The ID of the user that created this page.
            created_by_id:,
            currently_published:,
            # A generated ENUM descibing the current state of this page.
            current_state:,
            # The domain this page will resolve to. If null, the page will default to the
            # primary domain for this content type.
            domain:,
            dynamic_page_data_source_id:,
            dynamic_page_data_source_type:,
            # The ID of the HubDB table this page references, if applicable
            dynamic_page_hub_db_table_id:,
            # Boolean to determine whether or not the styles from the template should be
            # applied.
            enable_domain_stylesheets:,
            # Boolean to determine whether or not the styles from the template should be
            # applied.
            enable_layout_stylesheets:,
            # The featuredImage of this page.
            featured_image:,
            # Alt Text of the featuredImage.
            featured_image_alt_text:,
            # The ID of the associated folder this landing page is organized under in the app
            # dashboard.
            folder_id:,
            # Custom HTML for embed codes, javascript that should be placed before the </body>
            # tag of the page.
            footer_html:,
            # Custom HTML for embed codes, javascript, etc. that goes in the <head> tag of the
            # page.
            head_html:,
            # The html title of this page.
            html_title:,
            # Boolean to determine whether or not the Primary CSS Files should be applied.
            include_default_custom_css:,
            # The explicitly defined ISO 639 language code of the page. If null, the page will
            # default to the language of the Domain.
            language:,
            layout_sections:,
            # Optional override to set the URL to be used in the rel=canonical link tag on the
            # page.
            link_rel_canonical_url:,
            # The ID of the MAB test (or dynamic test) associated with this page, if
            # applicable
            mab_experiment_id:,
            # A description that goes in <meta> tag on the page.
            meta_description:,
            # The internal name of the page.
            name:,
            # The date at which this page should expire and begin redirecting to another url
            # or page.
            page_expiry_date:,
            # Boolean describing if the page expiration feature is enabled for this page
            page_expiry_enabled:,
            # The ID of another page this page's url should redirect to once this page
            # expires. Should only set this or pageExpiryRedirectUrl.
            page_expiry_redirect_id:,
            # The URL this page's url should redirect to once this page expires. Should only
            # set this or pageExpiryRedirectId.
            page_expiry_redirect_url:,
            # A generated Boolean describing whether or not this page is currently expired and
            # being redirected.
            page_redirected:,
            # Set this to create a password protected page. Entering the password will be
            # required to view the page.
            password:,
            # Rules for require member registration to access private content.
            public_access_rules:,
            # Boolean to determine whether or not to respect publicAccessRules.
            public_access_rules_enabled:,
            # The date (ISO8601 format) the page is to be published at.
            publish_date:,
            # Set this to true if you want to be published immediately when the schedule
            # publish endpoint is called, and to ignore the publish_date setting.
            publish_immediately:,
            # The path of the this page. This field is appended to the domain to construct the
            # url of this page.
            slug:,
            # An ENUM descibing the current state of this page.
            state:,
            # Details the type of page this is. Should always be landing_page or site_page
            subcategory:,
            # String detailing the path of the template used for this page.
            template_path:,
            theme_settings_values:,
            # ID of the primary page this object was translated from.
            translated_from_id:,
            translations:,
            updated:,
            # The ID of the user that updated this page.
            updated_by_id:,
            # A generated field representing the URL of this page.
            url:,
            # Boolean to determine if this page should use a featuredImage.
            use_featured_image:,
            # A data structure containing the data for all the modules inside the containers
            # for this page. This will only be populated if the page has widget containers.
            widget_containers:,
            # A data structure containing the data for all the modules for this page.
            widgets:,
            request_options: {}
          )
          end

          # Explicitly set new languages for each site page in a multi-language group.
          sig do
            params(
              languages: T::Hash[Symbol, String],
              primary_id: String,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).void
          end
          def update_languages(
            # Map of object IDs to associated languages of object in the multi-language group.
            languages:,
            # ID of the primary object in the multi-language group.
            primary_id:,
            request_options: {}
          )
          end

          # @api private
          sig { params(client: HubspotSDK::Client).returns(T.attached_class) }
          def self.new(client:)
          end
        end
      end
    end
  end
end
