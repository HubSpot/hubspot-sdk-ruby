# frozen_string_literal: true

require_relative "../../../test_helper"

class HubspotSDK::Test::Resources::Cms::Pages::LandingPagesTest < HubspotSDK::Test::ResourceTest
  def test_create_required_params
    skip("Prism tests are disabled")

    response =
      @hubspot.cms.pages.landing_pages.create(
        id: "id",
        ab_status: :master,
        ab_test_id: "abTestId",
        archived_at: "2019-12-27T18:11:19.117Z",
        archived_in_dashboard: true,
        attached_stylesheets: [{foo: {}}],
        author_name: "authorName",
        campaign: "campaign",
        category_id: 0,
        content_group_id: "contentGroupId",
        content_type_category: :"0",
        created: "2019-12-27T18:11:19.117Z",
        created_by_id: "createdById",
        currently_published: true,
        current_state: :AUTOMATED,
        domain: "domain",
        dynamic_page_data_source_id: "dynamicPageDataSourceId",
        dynamic_page_data_source_type: 0,
        dynamic_page_hub_db_table_id: "dynamicPageHubDbTableId",
        enable_domain_stylesheets: true,
        enable_layout_stylesheets: true,
        featured_image: "featuredImage",
        featured_image_alt_text: "featuredImageAltText",
        folder_id: "folderId",
        footer_html: "footerHtml",
        head_html: "headHtml",
        html_title: "htmlTitle",
        include_default_custom_css: true,
        language: :af,
        layout_sections: {
          foo: {
            cells: [],
            cssClass: "cssClass",
            cssId: "cssId",
            cssStyle: "cssStyle",
            label: "label",
            name: "name",
            params: {foo: {}},
            rowMetaData: [
              {
                cssClass: "cssClass",
                styles: {
                  backgroundColor: {a: 0, b: 0, g: 0, r: 0},
                  backgroundGradient: {
                    angle: {units: "units", value: 0},
                    colors: [{color: {a: 0, b: 0, g: 0, r: 0}}],
                    sideOrCorner: {horizontalSide: "horizontalSide", verticalSide: "verticalSide"}
                  },
                  backgroundImage: {
                    backgroundPosition: "backgroundPosition",
                    backgroundSize: "backgroundSize",
                    imageUrl: "imageUrl"
                  },
                  flexboxPositioning: "flexboxPositioning",
                  forceFullWidthSection: true,
                  maxWidthSectionCentering: 0,
                  verticalAlignment: "verticalAlignment"
                }
              }
            ],
            rows: [{}],
            styles: {
              backgroundColor: {a: 0, b: 0, g: 0, r: 0},
              backgroundGradient: {
                angle: {units: "units", value: 0},
                colors: [{color: {a: 0, b: 0, g: 0, r: 0}}],
                sideOrCorner: {horizontalSide: "horizontalSide", verticalSide: "verticalSide"}
              },
              backgroundImage: {
                backgroundPosition: "backgroundPosition",
                backgroundSize: "backgroundSize",
                imageUrl: "imageUrl"
              },
              flexboxPositioning: "flexboxPositioning",
              forceFullWidthSection: true,
              maxWidthSectionCentering: 0,
              verticalAlignment: "verticalAlignment"
            },
            type: "type",
            w: 0,
            x: 0
          }
        },
        link_rel_canonical_url: "linkRelCanonicalUrl",
        mab_experiment_id: "mabExperimentId",
        meta_description: "metaDescription",
        name: "name",
        page_expiry_date: 0,
        page_expiry_enabled: true,
        page_expiry_redirect_id: 0,
        page_expiry_redirect_url: "pageExpiryRedirectUrl",
        page_redirected: true,
        password: "password",
        public_access_rules: [{}],
        public_access_rules_enabled: true,
        publish_date: "2019-12-27T18:11:19.117Z",
        publish_immediately: true,
        slug: "slug",
        state: "state",
        subcategory: "subcategory",
        template_path: "templatePath",
        theme_settings_values: {foo: {}},
        translated_from_id: "translatedFromId",
        translations: {
          foo: {
            id: 0,
            archivedInDashboard: true,
            authorName: "authorName",
            campaign: "campaign",
            created: "2019-12-27T18:11:19.117Z",
            name: "name",
            password: "password",
            publicAccessRules: [{}],
            publicAccessRulesEnabled: true,
            publishDate: "2019-12-27T18:11:19.117Z",
            slug: "slug",
            state: "state",
            updated: "2019-12-27T18:11:19.117Z"
          }
        },
        updated: "2019-12-27T18:11:19.117Z",
        updated_by_id: "updatedById",
        url: "url",
        use_featured_image: true,
        widget_containers: {foo: {}},
        widgets: {foo: {}}
      )

    assert_pattern do
      response => nil
    end
  end

  def test_update_required_params
    skip("Prism tests are disabled")

    response =
      @hubspot.cms.pages.landing_pages.update(
        "objectId",
        id: "id",
        ab_status: :master,
        ab_test_id: "abTestId",
        archived_at: "2019-12-27T18:11:19.117Z",
        archived_in_dashboard: true,
        attached_stylesheets: [{foo: {}}],
        author_name: "authorName",
        campaign: "campaign",
        category_id: 0,
        content_group_id: "contentGroupId",
        content_type_category: :"0",
        created: "2019-12-27T18:11:19.117Z",
        created_by_id: "createdById",
        currently_published: true,
        current_state: :AUTOMATED,
        domain: "domain",
        dynamic_page_data_source_id: "dynamicPageDataSourceId",
        dynamic_page_data_source_type: 0,
        dynamic_page_hub_db_table_id: "dynamicPageHubDbTableId",
        enable_domain_stylesheets: true,
        enable_layout_stylesheets: true,
        featured_image: "featuredImage",
        featured_image_alt_text: "featuredImageAltText",
        folder_id: "folderId",
        footer_html: "footerHtml",
        head_html: "headHtml",
        html_title: "htmlTitle",
        include_default_custom_css: true,
        language: :af,
        layout_sections: {
          foo: {
            cells: [],
            cssClass: "cssClass",
            cssId: "cssId",
            cssStyle: "cssStyle",
            label: "label",
            name: "name",
            params: {foo: {}},
            rowMetaData: [
              {
                cssClass: "cssClass",
                styles: {
                  backgroundColor: {a: 0, b: 0, g: 0, r: 0},
                  backgroundGradient: {
                    angle: {units: "units", value: 0},
                    colors: [{color: {a: 0, b: 0, g: 0, r: 0}}],
                    sideOrCorner: {horizontalSide: "horizontalSide", verticalSide: "verticalSide"}
                  },
                  backgroundImage: {
                    backgroundPosition: "backgroundPosition",
                    backgroundSize: "backgroundSize",
                    imageUrl: "imageUrl"
                  },
                  flexboxPositioning: "flexboxPositioning",
                  forceFullWidthSection: true,
                  maxWidthSectionCentering: 0,
                  verticalAlignment: "verticalAlignment"
                }
              }
            ],
            rows: [{}],
            styles: {
              backgroundColor: {a: 0, b: 0, g: 0, r: 0},
              backgroundGradient: {
                angle: {units: "units", value: 0},
                colors: [{color: {a: 0, b: 0, g: 0, r: 0}}],
                sideOrCorner: {horizontalSide: "horizontalSide", verticalSide: "verticalSide"}
              },
              backgroundImage: {
                backgroundPosition: "backgroundPosition",
                backgroundSize: "backgroundSize",
                imageUrl: "imageUrl"
              },
              flexboxPositioning: "flexboxPositioning",
              forceFullWidthSection: true,
              maxWidthSectionCentering: 0,
              verticalAlignment: "verticalAlignment"
            },
            type: "type",
            w: 0,
            x: 0
          }
        },
        link_rel_canonical_url: "linkRelCanonicalUrl",
        mab_experiment_id: "mabExperimentId",
        meta_description: "metaDescription",
        name: "name",
        page_expiry_date: 0,
        page_expiry_enabled: true,
        page_expiry_redirect_id: 0,
        page_expiry_redirect_url: "pageExpiryRedirectUrl",
        page_redirected: true,
        password: "password",
        public_access_rules: [{}],
        public_access_rules_enabled: true,
        publish_date: "2019-12-27T18:11:19.117Z",
        publish_immediately: true,
        slug: "slug",
        state: "state",
        subcategory: "subcategory",
        template_path: "templatePath",
        theme_settings_values: {foo: {}},
        translated_from_id: "translatedFromId",
        translations: {
          foo: {
            id: 0,
            archivedInDashboard: true,
            authorName: "authorName",
            campaign: "campaign",
            created: "2019-12-27T18:11:19.117Z",
            name: "name",
            password: "password",
            publicAccessRules: [{}],
            publicAccessRulesEnabled: true,
            publishDate: "2019-12-27T18:11:19.117Z",
            slug: "slug",
            state: "state",
            updated: "2019-12-27T18:11:19.117Z"
          }
        },
        updated: "2019-12-27T18:11:19.117Z",
        updated_by_id: "updatedById",
        url: "url",
        use_featured_image: true,
        widget_containers: {foo: {}},
        widgets: {foo: {}}
      )

    assert_pattern do
      response => HubspotSDK::Cms::Page
    end

    assert_pattern do
      response => {
        id: String,
        ab_status: HubspotSDK::Cms::Page::AbStatus,
        ab_test_id: String,
        archived_at: Time,
        archived_in_dashboard: HubspotSDK::Internal::Type::Boolean,
        attached_stylesheets: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Internal::Type::HashOf[HubspotSDK::Internal::Type::Unknown]]),
        author_name: String,
        campaign: String,
        category_id: Integer,
        content_group_id: String,
        content_type_category: HubspotSDK::Cms::Page::ContentTypeCategory,
        created: Time,
        created_by_id: String,
        currently_published: HubspotSDK::Internal::Type::Boolean,
        current_state: HubspotSDK::Cms::Page::CurrentState,
        domain: String,
        dynamic_page_data_source_id: String,
        dynamic_page_data_source_type: Integer,
        dynamic_page_hub_db_table_id: String,
        enable_domain_stylesheets: HubspotSDK::Internal::Type::Boolean,
        enable_layout_stylesheets: HubspotSDK::Internal::Type::Boolean,
        featured_image: String,
        featured_image_alt_text: String,
        folder_id: String,
        footer_html: String,
        head_html: String,
        html_title: String,
        include_default_custom_css: HubspotSDK::Internal::Type::Boolean,
        language: HubspotSDK::Cms::Page::Language,
        layout_sections: ^(HubspotSDK::Internal::Type::HashOf[HubspotSDK::Cms::LayoutSection]),
        link_rel_canonical_url: String,
        mab_experiment_id: String,
        meta_description: String,
        name: String,
        page_expiry_date: Integer,
        page_expiry_enabled: HubspotSDK::Internal::Type::Boolean,
        page_expiry_redirect_id: Integer,
        page_expiry_redirect_url: String,
        page_redirected: HubspotSDK::Internal::Type::Boolean,
        password: String,
        public_access_rules: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Internal::Type::Unknown]),
        public_access_rules_enabled: HubspotSDK::Internal::Type::Boolean,
        publish_date: Time,
        publish_immediately: HubspotSDK::Internal::Type::Boolean,
        slug: String,
        state: String,
        subcategory: String,
        template_path: String,
        theme_settings_values: ^(HubspotSDK::Internal::Type::HashOf[HubspotSDK::Internal::Type::Unknown]),
        translated_from_id: String,
        translations: ^(HubspotSDK::Internal::Type::HashOf[HubspotSDK::Cms::ContentLanguageVariation]),
        updated: Time,
        updated_by_id: String,
        url: String,
        use_featured_image: HubspotSDK::Internal::Type::Boolean,
        widget_containers: ^(HubspotSDK::Internal::Type::HashOf[HubspotSDK::Internal::Type::Unknown]),
        widgets: ^(HubspotSDK::Internal::Type::HashOf[HubspotSDK::Internal::Type::Unknown])
      }
    end
  end

  def test_list
    skip("Prism tests are disabled")

    response = @hubspot.cms.pages.landing_pages.list

    assert_pattern do
      response => HubspotSDK::Internal::Page
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => HubspotSDK::Cms::Page
    end

    assert_pattern do
      row => {
        id: String,
        ab_status: HubspotSDK::Cms::Page::AbStatus,
        ab_test_id: String,
        archived_at: Time,
        archived_in_dashboard: HubspotSDK::Internal::Type::Boolean,
        attached_stylesheets: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Internal::Type::HashOf[HubspotSDK::Internal::Type::Unknown]]),
        author_name: String,
        campaign: String,
        category_id: Integer,
        content_group_id: String,
        content_type_category: HubspotSDK::Cms::Page::ContentTypeCategory,
        created: Time,
        created_by_id: String,
        currently_published: HubspotSDK::Internal::Type::Boolean,
        current_state: HubspotSDK::Cms::Page::CurrentState,
        domain: String,
        dynamic_page_data_source_id: String,
        dynamic_page_data_source_type: Integer,
        dynamic_page_hub_db_table_id: String,
        enable_domain_stylesheets: HubspotSDK::Internal::Type::Boolean,
        enable_layout_stylesheets: HubspotSDK::Internal::Type::Boolean,
        featured_image: String,
        featured_image_alt_text: String,
        folder_id: String,
        footer_html: String,
        head_html: String,
        html_title: String,
        include_default_custom_css: HubspotSDK::Internal::Type::Boolean,
        language: HubspotSDK::Cms::Page::Language,
        layout_sections: ^(HubspotSDK::Internal::Type::HashOf[HubspotSDK::Cms::LayoutSection]),
        link_rel_canonical_url: String,
        mab_experiment_id: String,
        meta_description: String,
        name: String,
        page_expiry_date: Integer,
        page_expiry_enabled: HubspotSDK::Internal::Type::Boolean,
        page_expiry_redirect_id: Integer,
        page_expiry_redirect_url: String,
        page_redirected: HubspotSDK::Internal::Type::Boolean,
        password: String,
        public_access_rules: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Internal::Type::Unknown]),
        public_access_rules_enabled: HubspotSDK::Internal::Type::Boolean,
        publish_date: Time,
        publish_immediately: HubspotSDK::Internal::Type::Boolean,
        slug: String,
        state: String,
        subcategory: String,
        template_path: String,
        theme_settings_values: ^(HubspotSDK::Internal::Type::HashOf[HubspotSDK::Internal::Type::Unknown]),
        translated_from_id: String,
        translations: ^(HubspotSDK::Internal::Type::HashOf[HubspotSDK::Cms::ContentLanguageVariation]),
        updated: Time,
        updated_by_id: String,
        url: String,
        use_featured_image: HubspotSDK::Internal::Type::Boolean,
        widget_containers: ^(HubspotSDK::Internal::Type::HashOf[HubspotSDK::Internal::Type::Unknown]),
        widgets: ^(HubspotSDK::Internal::Type::HashOf[HubspotSDK::Internal::Type::Unknown])
      }
    end
  end

  def test_delete
    skip("Prism tests are disabled")

    response = @hubspot.cms.pages.landing_pages.delete("objectId")

    assert_pattern do
      response => nil
    end
  end

  def test_attach_to_lang_group_required_params
    skip("Prism tests are disabled")

    response =
      @hubspot.cms.pages.landing_pages.attach_to_lang_group(
        id: "id",
        language: "language",
        primary_id: "primaryId"
      )

    assert_pattern do
      response => nil
    end
  end

  def test_clone__required_params
    skip("Prism tests are disabled")

    response = @hubspot.cms.pages.landing_pages.clone_(id: "id")

    assert_pattern do
      response => HubspotSDK::Cms::Page
    end

    assert_pattern do
      response => {
        id: String,
        ab_status: HubspotSDK::Cms::Page::AbStatus,
        ab_test_id: String,
        archived_at: Time,
        archived_in_dashboard: HubspotSDK::Internal::Type::Boolean,
        attached_stylesheets: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Internal::Type::HashOf[HubspotSDK::Internal::Type::Unknown]]),
        author_name: String,
        campaign: String,
        category_id: Integer,
        content_group_id: String,
        content_type_category: HubspotSDK::Cms::Page::ContentTypeCategory,
        created: Time,
        created_by_id: String,
        currently_published: HubspotSDK::Internal::Type::Boolean,
        current_state: HubspotSDK::Cms::Page::CurrentState,
        domain: String,
        dynamic_page_data_source_id: String,
        dynamic_page_data_source_type: Integer,
        dynamic_page_hub_db_table_id: String,
        enable_domain_stylesheets: HubspotSDK::Internal::Type::Boolean,
        enable_layout_stylesheets: HubspotSDK::Internal::Type::Boolean,
        featured_image: String,
        featured_image_alt_text: String,
        folder_id: String,
        footer_html: String,
        head_html: String,
        html_title: String,
        include_default_custom_css: HubspotSDK::Internal::Type::Boolean,
        language: HubspotSDK::Cms::Page::Language,
        layout_sections: ^(HubspotSDK::Internal::Type::HashOf[HubspotSDK::Cms::LayoutSection]),
        link_rel_canonical_url: String,
        mab_experiment_id: String,
        meta_description: String,
        name: String,
        page_expiry_date: Integer,
        page_expiry_enabled: HubspotSDK::Internal::Type::Boolean,
        page_expiry_redirect_id: Integer,
        page_expiry_redirect_url: String,
        page_redirected: HubspotSDK::Internal::Type::Boolean,
        password: String,
        public_access_rules: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Internal::Type::Unknown]),
        public_access_rules_enabled: HubspotSDK::Internal::Type::Boolean,
        publish_date: Time,
        publish_immediately: HubspotSDK::Internal::Type::Boolean,
        slug: String,
        state: String,
        subcategory: String,
        template_path: String,
        theme_settings_values: ^(HubspotSDK::Internal::Type::HashOf[HubspotSDK::Internal::Type::Unknown]),
        translated_from_id: String,
        translations: ^(HubspotSDK::Internal::Type::HashOf[HubspotSDK::Cms::ContentLanguageVariation]),
        updated: Time,
        updated_by_id: String,
        url: String,
        use_featured_image: HubspotSDK::Internal::Type::Boolean,
        widget_containers: ^(HubspotSDK::Internal::Type::HashOf[HubspotSDK::Internal::Type::Unknown]),
        widgets: ^(HubspotSDK::Internal::Type::HashOf[HubspotSDK::Internal::Type::Unknown])
      }
    end
  end

  def test_create_ab_test_variation_required_params
    skip("Prism tests are disabled")

    response =
      @hubspot.cms.pages.landing_pages.create_ab_test_variation(
        content_id: "contentId",
        variation_name: "variationName"
      )

    assert_pattern do
      response => HubspotSDK::Cms::Page
    end

    assert_pattern do
      response => {
        id: String,
        ab_status: HubspotSDK::Cms::Page::AbStatus,
        ab_test_id: String,
        archived_at: Time,
        archived_in_dashboard: HubspotSDK::Internal::Type::Boolean,
        attached_stylesheets: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Internal::Type::HashOf[HubspotSDK::Internal::Type::Unknown]]),
        author_name: String,
        campaign: String,
        category_id: Integer,
        content_group_id: String,
        content_type_category: HubspotSDK::Cms::Page::ContentTypeCategory,
        created: Time,
        created_by_id: String,
        currently_published: HubspotSDK::Internal::Type::Boolean,
        current_state: HubspotSDK::Cms::Page::CurrentState,
        domain: String,
        dynamic_page_data_source_id: String,
        dynamic_page_data_source_type: Integer,
        dynamic_page_hub_db_table_id: String,
        enable_domain_stylesheets: HubspotSDK::Internal::Type::Boolean,
        enable_layout_stylesheets: HubspotSDK::Internal::Type::Boolean,
        featured_image: String,
        featured_image_alt_text: String,
        folder_id: String,
        footer_html: String,
        head_html: String,
        html_title: String,
        include_default_custom_css: HubspotSDK::Internal::Type::Boolean,
        language: HubspotSDK::Cms::Page::Language,
        layout_sections: ^(HubspotSDK::Internal::Type::HashOf[HubspotSDK::Cms::LayoutSection]),
        link_rel_canonical_url: String,
        mab_experiment_id: String,
        meta_description: String,
        name: String,
        page_expiry_date: Integer,
        page_expiry_enabled: HubspotSDK::Internal::Type::Boolean,
        page_expiry_redirect_id: Integer,
        page_expiry_redirect_url: String,
        page_redirected: HubspotSDK::Internal::Type::Boolean,
        password: String,
        public_access_rules: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Internal::Type::Unknown]),
        public_access_rules_enabled: HubspotSDK::Internal::Type::Boolean,
        publish_date: Time,
        publish_immediately: HubspotSDK::Internal::Type::Boolean,
        slug: String,
        state: String,
        subcategory: String,
        template_path: String,
        theme_settings_values: ^(HubspotSDK::Internal::Type::HashOf[HubspotSDK::Internal::Type::Unknown]),
        translated_from_id: String,
        translations: ^(HubspotSDK::Internal::Type::HashOf[HubspotSDK::Cms::ContentLanguageVariation]),
        updated: Time,
        updated_by_id: String,
        url: String,
        use_featured_image: HubspotSDK::Internal::Type::Boolean,
        widget_containers: ^(HubspotSDK::Internal::Type::HashOf[HubspotSDK::Internal::Type::Unknown]),
        widgets: ^(HubspotSDK::Internal::Type::HashOf[HubspotSDK::Internal::Type::Unknown])
      }
    end
  end

  def test_create_batch_required_params
    skip("Prism tests are disabled")

    response =
      @hubspot.cms.pages.landing_pages.create_batch(
        inputs: [
          {
            id: "id",
            abStatus: :master,
            abTestId: "abTestId",
            archivedAt: "2019-12-27T18:11:19.117Z",
            archivedInDashboard: true,
            attachedStylesheets: [{foo: {}}],
            authorName: "authorName",
            campaign: "campaign",
            categoryId: 0,
            contentGroupId: "contentGroupId",
            contentTypeCategory: :"0",
            created: "2019-12-27T18:11:19.117Z",
            createdById: "createdById",
            currentlyPublished: true,
            currentState: :AUTOMATED,
            domain: "domain",
            dynamicPageDataSourceId: "dynamicPageDataSourceId",
            dynamicPageDataSourceType: 0,
            dynamicPageHubDbTableId: "dynamicPageHubDbTableId",
            enableDomainStylesheets: true,
            enableLayoutStylesheets: true,
            featuredImage: "featuredImage",
            featuredImageAltText: "featuredImageAltText",
            folderId: "folderId",
            footerHtml: "footerHtml",
            headHtml: "headHtml",
            htmlTitle: "htmlTitle",
            includeDefaultCustomCss: true,
            language: :af,
            layoutSections: {
              foo: {
                cells: [],
                cssClass: "cssClass",
                cssId: "cssId",
                cssStyle: "cssStyle",
                label: "label",
                name: "name",
                params: {foo: {}},
                rowMetaData: [
                  {
                    cssClass: "cssClass",
                    styles: {
                      backgroundColor: {a: 0, b: 0, g: 0, r: 0},
                      backgroundGradient: {
                        angle: {units: "units", value: 0},
                        colors: [{color: {a: 0, b: 0, g: 0, r: 0}}],
                        sideOrCorner: {horizontalSide: "horizontalSide", verticalSide: "verticalSide"}
                      },
                      backgroundImage: {
                        backgroundPosition: "backgroundPosition",
                        backgroundSize: "backgroundSize",
                        imageUrl: "imageUrl"
                      },
                      flexboxPositioning: "flexboxPositioning",
                      forceFullWidthSection: true,
                      maxWidthSectionCentering: 0,
                      verticalAlignment: "verticalAlignment"
                    }
                  }
                ],
                rows: [{}],
                styles: {
                  backgroundColor: {a: 0, b: 0, g: 0, r: 0},
                  backgroundGradient: {
                    angle: {units: "units", value: 0},
                    colors: [{color: {a: 0, b: 0, g: 0, r: 0}}],
                    sideOrCorner: {horizontalSide: "horizontalSide", verticalSide: "verticalSide"}
                  },
                  backgroundImage: {
                    backgroundPosition: "backgroundPosition",
                    backgroundSize: "backgroundSize",
                    imageUrl: "imageUrl"
                  },
                  flexboxPositioning: "flexboxPositioning",
                  forceFullWidthSection: true,
                  maxWidthSectionCentering: 0,
                  verticalAlignment: "verticalAlignment"
                },
                type: "type",
                w: 0,
                x: 0
              }
            },
            linkRelCanonicalUrl: "linkRelCanonicalUrl",
            mabExperimentId: "mabExperimentId",
            metaDescription: "metaDescription",
            name: "name",
            pageExpiryDate: 0,
            pageExpiryEnabled: true,
            pageExpiryRedirectId: 0,
            pageExpiryRedirectUrl: "pageExpiryRedirectUrl",
            pageRedirected: true,
            password: "password",
            publicAccessRules: [{}],
            publicAccessRulesEnabled: true,
            publishDate: "2019-12-27T18:11:19.117Z",
            publishImmediately: true,
            slug: "slug",
            state: "state",
            subcategory: "subcategory",
            templatePath: "templatePath",
            themeSettingsValues: {foo: {}},
            translatedFromId: "translatedFromId",
            translations: {
              foo: {
                id: 0,
                archivedInDashboard: true,
                authorName: "authorName",
                campaign: "campaign",
                created: "2019-12-27T18:11:19.117Z",
                name: "name",
                password: "password",
                publicAccessRules: [{}],
                publicAccessRulesEnabled: true,
                publishDate: "2019-12-27T18:11:19.117Z",
                slug: "slug",
                state: "state",
                updated: "2019-12-27T18:11:19.117Z"
              }
            },
            updated: "2019-12-27T18:11:19.117Z",
            updatedById: "updatedById",
            url: "url",
            useFeaturedImage: true,
            widgetContainers: {foo: {}},
            widgets: {foo: {}}
          }
        ]
      )

    assert_pattern do
      response => HubspotSDK::Cms::BatchResponsePage
    end

    assert_pattern do
      response => {
        completed_at: Time,
        results: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Cms::Page]),
        started_at: Time,
        status: HubspotSDK::Cms::BatchResponsePage::Status,
        links: ^(HubspotSDK::Internal::Type::HashOf[String]) | nil,
        requested_at: Time | nil
      }
    end
  end

  def test_create_folder_required_params
    skip("Prism tests are disabled")

    response =
      @hubspot.cms.pages.landing_pages.create_folder(
        id: "id",
        category: 0,
        created: "2019-12-27T18:11:19.117Z",
        deleted_at: "2019-12-27T18:11:19.117Z",
        name: "name",
        parent_folder_id: 0,
        updated: "2019-12-27T18:11:19.117Z"
      )

    assert_pattern do
      response => HubspotSDK::Cms::ContentFolder
    end

    assert_pattern do
      response => {
        id: String,
        category: Integer,
        created: Time,
        deleted_at: Time,
        name: String,
        parent_folder_id: Integer,
        updated: Time
      }
    end
  end

  def test_create_folders_batch_required_params
    skip("Prism tests are disabled")

    response =
      @hubspot.cms.pages.landing_pages.create_folders_batch(
        inputs: [
          {
            id: "id",
            category: 0,
            created: "2019-12-27T18:11:19.117Z",
            deletedAt: "2019-12-27T18:11:19.117Z",
            name: "name",
            parentFolderId: 0,
            updated: "2019-12-27T18:11:19.117Z"
          }
        ]
      )

    assert_pattern do
      response => HubspotSDK::Cms::BatchResponseContentFolder
    end

    assert_pattern do
      response => {
        completed_at: Time,
        results: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Cms::ContentFolder]),
        started_at: Time,
        status: HubspotSDK::Cms::BatchResponseContentFolder::Status,
        links: ^(HubspotSDK::Internal::Type::HashOf[String]) | nil,
        requested_at: Time | nil
      }
    end
  end

  def test_create_language_variation_required_params
    skip("Prism tests are disabled")

    response = @hubspot.cms.pages.landing_pages.create_language_variation(id: "id")

    assert_pattern do
      response => HubspotSDK::Cms::Page
    end

    assert_pattern do
      response => {
        id: String,
        ab_status: HubspotSDK::Cms::Page::AbStatus,
        ab_test_id: String,
        archived_at: Time,
        archived_in_dashboard: HubspotSDK::Internal::Type::Boolean,
        attached_stylesheets: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Internal::Type::HashOf[HubspotSDK::Internal::Type::Unknown]]),
        author_name: String,
        campaign: String,
        category_id: Integer,
        content_group_id: String,
        content_type_category: HubspotSDK::Cms::Page::ContentTypeCategory,
        created: Time,
        created_by_id: String,
        currently_published: HubspotSDK::Internal::Type::Boolean,
        current_state: HubspotSDK::Cms::Page::CurrentState,
        domain: String,
        dynamic_page_data_source_id: String,
        dynamic_page_data_source_type: Integer,
        dynamic_page_hub_db_table_id: String,
        enable_domain_stylesheets: HubspotSDK::Internal::Type::Boolean,
        enable_layout_stylesheets: HubspotSDK::Internal::Type::Boolean,
        featured_image: String,
        featured_image_alt_text: String,
        folder_id: String,
        footer_html: String,
        head_html: String,
        html_title: String,
        include_default_custom_css: HubspotSDK::Internal::Type::Boolean,
        language: HubspotSDK::Cms::Page::Language,
        layout_sections: ^(HubspotSDK::Internal::Type::HashOf[HubspotSDK::Cms::LayoutSection]),
        link_rel_canonical_url: String,
        mab_experiment_id: String,
        meta_description: String,
        name: String,
        page_expiry_date: Integer,
        page_expiry_enabled: HubspotSDK::Internal::Type::Boolean,
        page_expiry_redirect_id: Integer,
        page_expiry_redirect_url: String,
        page_redirected: HubspotSDK::Internal::Type::Boolean,
        password: String,
        public_access_rules: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Internal::Type::Unknown]),
        public_access_rules_enabled: HubspotSDK::Internal::Type::Boolean,
        publish_date: Time,
        publish_immediately: HubspotSDK::Internal::Type::Boolean,
        slug: String,
        state: String,
        subcategory: String,
        template_path: String,
        theme_settings_values: ^(HubspotSDK::Internal::Type::HashOf[HubspotSDK::Internal::Type::Unknown]),
        translated_from_id: String,
        translations: ^(HubspotSDK::Internal::Type::HashOf[HubspotSDK::Cms::ContentLanguageVariation]),
        updated: Time,
        updated_by_id: String,
        url: String,
        use_featured_image: HubspotSDK::Internal::Type::Boolean,
        widget_containers: ^(HubspotSDK::Internal::Type::HashOf[HubspotSDK::Internal::Type::Unknown]),
        widgets: ^(HubspotSDK::Internal::Type::HashOf[HubspotSDK::Internal::Type::Unknown])
      }
    end
  end

  def test_delete_batch_required_params
    skip("Prism tests are disabled")

    response = @hubspot.cms.pages.landing_pages.delete_batch(inputs: ["string"])

    assert_pattern do
      response => nil
    end
  end

  def test_delete_folder
    skip("Prism tests are disabled")

    response = @hubspot.cms.pages.landing_pages.delete_folder("objectId")

    assert_pattern do
      response => nil
    end
  end

  def test_delete_folders_batch_required_params
    skip("Prism tests are disabled")

    response = @hubspot.cms.pages.landing_pages.delete_folders_batch(inputs: ["string"])

    assert_pattern do
      response => nil
    end
  end

  def test_detach_from_lang_group_required_params
    skip("Prism tests are disabled")

    response = @hubspot.cms.pages.landing_pages.detach_from_lang_group(id: "id")

    assert_pattern do
      response => nil
    end
  end

  def test_end_ab_test_required_params
    skip("Prism tests are disabled")

    response = @hubspot.cms.pages.landing_pages.end_ab_test(ab_test_id: "abTestId", winner_id: "winnerId")

    assert_pattern do
      response => nil
    end
  end

  def test_get
    skip("Prism tests are disabled")

    response = @hubspot.cms.pages.landing_pages.get("objectId")

    assert_pattern do
      response => HubspotSDK::Cms::Page
    end

    assert_pattern do
      response => {
        id: String,
        ab_status: HubspotSDK::Cms::Page::AbStatus,
        ab_test_id: String,
        archived_at: Time,
        archived_in_dashboard: HubspotSDK::Internal::Type::Boolean,
        attached_stylesheets: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Internal::Type::HashOf[HubspotSDK::Internal::Type::Unknown]]),
        author_name: String,
        campaign: String,
        category_id: Integer,
        content_group_id: String,
        content_type_category: HubspotSDK::Cms::Page::ContentTypeCategory,
        created: Time,
        created_by_id: String,
        currently_published: HubspotSDK::Internal::Type::Boolean,
        current_state: HubspotSDK::Cms::Page::CurrentState,
        domain: String,
        dynamic_page_data_source_id: String,
        dynamic_page_data_source_type: Integer,
        dynamic_page_hub_db_table_id: String,
        enable_domain_stylesheets: HubspotSDK::Internal::Type::Boolean,
        enable_layout_stylesheets: HubspotSDK::Internal::Type::Boolean,
        featured_image: String,
        featured_image_alt_text: String,
        folder_id: String,
        footer_html: String,
        head_html: String,
        html_title: String,
        include_default_custom_css: HubspotSDK::Internal::Type::Boolean,
        language: HubspotSDK::Cms::Page::Language,
        layout_sections: ^(HubspotSDK::Internal::Type::HashOf[HubspotSDK::Cms::LayoutSection]),
        link_rel_canonical_url: String,
        mab_experiment_id: String,
        meta_description: String,
        name: String,
        page_expiry_date: Integer,
        page_expiry_enabled: HubspotSDK::Internal::Type::Boolean,
        page_expiry_redirect_id: Integer,
        page_expiry_redirect_url: String,
        page_redirected: HubspotSDK::Internal::Type::Boolean,
        password: String,
        public_access_rules: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Internal::Type::Unknown]),
        public_access_rules_enabled: HubspotSDK::Internal::Type::Boolean,
        publish_date: Time,
        publish_immediately: HubspotSDK::Internal::Type::Boolean,
        slug: String,
        state: String,
        subcategory: String,
        template_path: String,
        theme_settings_values: ^(HubspotSDK::Internal::Type::HashOf[HubspotSDK::Internal::Type::Unknown]),
        translated_from_id: String,
        translations: ^(HubspotSDK::Internal::Type::HashOf[HubspotSDK::Cms::ContentLanguageVariation]),
        updated: Time,
        updated_by_id: String,
        url: String,
        use_featured_image: HubspotSDK::Internal::Type::Boolean,
        widget_containers: ^(HubspotSDK::Internal::Type::HashOf[HubspotSDK::Internal::Type::Unknown]),
        widgets: ^(HubspotSDK::Internal::Type::HashOf[HubspotSDK::Internal::Type::Unknown])
      }
    end
  end

  def test_get_batch_required_params
    skip("Prism tests are disabled")

    response = @hubspot.cms.pages.landing_pages.get_batch(inputs: ["string"])

    assert_pattern do
      response => HubspotSDK::Cms::BatchResponsePage
    end

    assert_pattern do
      response => {
        completed_at: Time,
        results: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Cms::Page]),
        started_at: Time,
        status: HubspotSDK::Cms::BatchResponsePage::Status,
        links: ^(HubspotSDK::Internal::Type::HashOf[String]) | nil,
        requested_at: Time | nil
      }
    end
  end

  def test_get_draft
    skip("Prism tests are disabled")

    response = @hubspot.cms.pages.landing_pages.get_draft("objectId")

    assert_pattern do
      response => HubspotSDK::Cms::Page
    end

    assert_pattern do
      response => {
        id: String,
        ab_status: HubspotSDK::Cms::Page::AbStatus,
        ab_test_id: String,
        archived_at: Time,
        archived_in_dashboard: HubspotSDK::Internal::Type::Boolean,
        attached_stylesheets: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Internal::Type::HashOf[HubspotSDK::Internal::Type::Unknown]]),
        author_name: String,
        campaign: String,
        category_id: Integer,
        content_group_id: String,
        content_type_category: HubspotSDK::Cms::Page::ContentTypeCategory,
        created: Time,
        created_by_id: String,
        currently_published: HubspotSDK::Internal::Type::Boolean,
        current_state: HubspotSDK::Cms::Page::CurrentState,
        domain: String,
        dynamic_page_data_source_id: String,
        dynamic_page_data_source_type: Integer,
        dynamic_page_hub_db_table_id: String,
        enable_domain_stylesheets: HubspotSDK::Internal::Type::Boolean,
        enable_layout_stylesheets: HubspotSDK::Internal::Type::Boolean,
        featured_image: String,
        featured_image_alt_text: String,
        folder_id: String,
        footer_html: String,
        head_html: String,
        html_title: String,
        include_default_custom_css: HubspotSDK::Internal::Type::Boolean,
        language: HubspotSDK::Cms::Page::Language,
        layout_sections: ^(HubspotSDK::Internal::Type::HashOf[HubspotSDK::Cms::LayoutSection]),
        link_rel_canonical_url: String,
        mab_experiment_id: String,
        meta_description: String,
        name: String,
        page_expiry_date: Integer,
        page_expiry_enabled: HubspotSDK::Internal::Type::Boolean,
        page_expiry_redirect_id: Integer,
        page_expiry_redirect_url: String,
        page_redirected: HubspotSDK::Internal::Type::Boolean,
        password: String,
        public_access_rules: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Internal::Type::Unknown]),
        public_access_rules_enabled: HubspotSDK::Internal::Type::Boolean,
        publish_date: Time,
        publish_immediately: HubspotSDK::Internal::Type::Boolean,
        slug: String,
        state: String,
        subcategory: String,
        template_path: String,
        theme_settings_values: ^(HubspotSDK::Internal::Type::HashOf[HubspotSDK::Internal::Type::Unknown]),
        translated_from_id: String,
        translations: ^(HubspotSDK::Internal::Type::HashOf[HubspotSDK::Cms::ContentLanguageVariation]),
        updated: Time,
        updated_by_id: String,
        url: String,
        use_featured_image: HubspotSDK::Internal::Type::Boolean,
        widget_containers: ^(HubspotSDK::Internal::Type::HashOf[HubspotSDK::Internal::Type::Unknown]),
        widgets: ^(HubspotSDK::Internal::Type::HashOf[HubspotSDK::Internal::Type::Unknown])
      }
    end
  end

  def test_get_folder
    skip("Prism tests are disabled")

    response = @hubspot.cms.pages.landing_pages.get_folder("objectId")

    assert_pattern do
      response => HubspotSDK::Cms::ContentFolder
    end

    assert_pattern do
      response => {
        id: String,
        category: Integer,
        created: Time,
        deleted_at: Time,
        name: String,
        parent_folder_id: Integer,
        updated: Time
      }
    end
  end

  def test_get_folder_revision_required_params
    skip("Prism tests are disabled")

    response = @hubspot.cms.pages.landing_pages.get_folder_revision("revisionId", object_id_: "objectId")

    assert_pattern do
      response => HubspotSDK::Cms::VersionContentFolder
    end

    assert_pattern do
      response => {
        id: String,
        object: HubspotSDK::Cms::ContentFolder,
        updated_at: Time,
        user: HubspotSDK::VersionUser
      }
    end
  end

  def test_get_folders_batch_required_params
    skip("Prism tests are disabled")

    response = @hubspot.cms.pages.landing_pages.get_folders_batch(inputs: ["string"])

    assert_pattern do
      response => HubspotSDK::Cms::BatchResponseContentFolder
    end

    assert_pattern do
      response => {
        completed_at: Time,
        results: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Cms::ContentFolder]),
        started_at: Time,
        status: HubspotSDK::Cms::BatchResponseContentFolder::Status,
        links: ^(HubspotSDK::Internal::Type::HashOf[String]) | nil,
        requested_at: Time | nil
      }
    end
  end

  def test_get_revision_required_params
    skip("Prism tests are disabled")

    response = @hubspot.cms.pages.landing_pages.get_revision("revisionId", object_id_: "objectId")

    assert_pattern do
      response => HubspotSDK::Cms::VersionPage
    end

    assert_pattern do
      response => {
        id: String,
        object: HubspotSDK::Cms::Page,
        updated_at: Time,
        user: HubspotSDK::VersionUser
      }
    end
  end

  def test_list_folder_revisions
    skip("Prism tests are disabled")

    response = @hubspot.cms.pages.landing_pages.list_folder_revisions("objectId")

    assert_pattern do
      response => HubspotSDK::Cms::CollectionResponseWithTotalVersionContentFolder
    end

    assert_pattern do
      response => {
        results: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Cms::VersionContentFolder]),
        total: Integer,
        paging: HubspotSDK::Marketing::Paging | nil
      }
    end
  end

  def test_list_folders
    skip("Prism tests are disabled")

    response = @hubspot.cms.pages.landing_pages.list_folders

    assert_pattern do
      response => HubspotSDK::Cms::CollectionResponseWithTotalContentFolderForwardPaging
    end

    assert_pattern do
      response => {
        results: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Cms::ContentFolder]),
        total: Integer,
        paging: HubspotSDK::ForwardPaging | nil
      }
    end
  end

  def test_list_revisions
    skip("Prism tests are disabled")

    response = @hubspot.cms.pages.landing_pages.list_revisions("objectId")

    assert_pattern do
      response => HubspotSDK::Cms::CollectionResponseWithTotalVersionPage
    end

    assert_pattern do
      response => {
        results: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Cms::VersionPage]),
        total: Integer,
        paging: HubspotSDK::Marketing::Paging | nil
      }
    end
  end

  def test_publish_draft
    skip("Prism tests are disabled")

    response = @hubspot.cms.pages.landing_pages.publish_draft("objectId")

    assert_pattern do
      response => nil
    end
  end

  def test_rerun_ab_test_required_params
    skip("Prism tests are disabled")

    response =
      @hubspot.cms.pages.landing_pages.rerun_ab_test(ab_test_id: "abTestId", variation_id: "variationId")

    assert_pattern do
      response => nil
    end
  end

  def test_reset_draft
    skip("Prism tests are disabled")

    response = @hubspot.cms.pages.landing_pages.reset_draft("objectId")

    assert_pattern do
      response => nil
    end
  end

  def test_restore_folder_revision_required_params
    skip("Prism tests are disabled")

    response = @hubspot.cms.pages.landing_pages.restore_folder_revision("revisionId", object_id_: "objectId")

    assert_pattern do
      response => HubspotSDK::Cms::ContentFolder
    end

    assert_pattern do
      response => {
        id: String,
        category: Integer,
        created: Time,
        deleted_at: Time,
        name: String,
        parent_folder_id: Integer,
        updated: Time
      }
    end
  end

  def test_restore_revision_required_params
    skip("Prism tests are disabled")

    response = @hubspot.cms.pages.landing_pages.restore_revision("revisionId", object_id_: "objectId")

    assert_pattern do
      response => HubspotSDK::Cms::Page
    end

    assert_pattern do
      response => {
        id: String,
        ab_status: HubspotSDK::Cms::Page::AbStatus,
        ab_test_id: String,
        archived_at: Time,
        archived_in_dashboard: HubspotSDK::Internal::Type::Boolean,
        attached_stylesheets: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Internal::Type::HashOf[HubspotSDK::Internal::Type::Unknown]]),
        author_name: String,
        campaign: String,
        category_id: Integer,
        content_group_id: String,
        content_type_category: HubspotSDK::Cms::Page::ContentTypeCategory,
        created: Time,
        created_by_id: String,
        currently_published: HubspotSDK::Internal::Type::Boolean,
        current_state: HubspotSDK::Cms::Page::CurrentState,
        domain: String,
        dynamic_page_data_source_id: String,
        dynamic_page_data_source_type: Integer,
        dynamic_page_hub_db_table_id: String,
        enable_domain_stylesheets: HubspotSDK::Internal::Type::Boolean,
        enable_layout_stylesheets: HubspotSDK::Internal::Type::Boolean,
        featured_image: String,
        featured_image_alt_text: String,
        folder_id: String,
        footer_html: String,
        head_html: String,
        html_title: String,
        include_default_custom_css: HubspotSDK::Internal::Type::Boolean,
        language: HubspotSDK::Cms::Page::Language,
        layout_sections: ^(HubspotSDK::Internal::Type::HashOf[HubspotSDK::Cms::LayoutSection]),
        link_rel_canonical_url: String,
        mab_experiment_id: String,
        meta_description: String,
        name: String,
        page_expiry_date: Integer,
        page_expiry_enabled: HubspotSDK::Internal::Type::Boolean,
        page_expiry_redirect_id: Integer,
        page_expiry_redirect_url: String,
        page_redirected: HubspotSDK::Internal::Type::Boolean,
        password: String,
        public_access_rules: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Internal::Type::Unknown]),
        public_access_rules_enabled: HubspotSDK::Internal::Type::Boolean,
        publish_date: Time,
        publish_immediately: HubspotSDK::Internal::Type::Boolean,
        slug: String,
        state: String,
        subcategory: String,
        template_path: String,
        theme_settings_values: ^(HubspotSDK::Internal::Type::HashOf[HubspotSDK::Internal::Type::Unknown]),
        translated_from_id: String,
        translations: ^(HubspotSDK::Internal::Type::HashOf[HubspotSDK::Cms::ContentLanguageVariation]),
        updated: Time,
        updated_by_id: String,
        url: String,
        use_featured_image: HubspotSDK::Internal::Type::Boolean,
        widget_containers: ^(HubspotSDK::Internal::Type::HashOf[HubspotSDK::Internal::Type::Unknown]),
        widgets: ^(HubspotSDK::Internal::Type::HashOf[HubspotSDK::Internal::Type::Unknown])
      }
    end
  end

  def test_restore_revision_to_draft_required_params
    skip("Prism tests are disabled")

    response = @hubspot.cms.pages.landing_pages.restore_revision_to_draft(0, object_id_: "objectId")

    assert_pattern do
      response => HubspotSDK::Cms::Page
    end

    assert_pattern do
      response => {
        id: String,
        ab_status: HubspotSDK::Cms::Page::AbStatus,
        ab_test_id: String,
        archived_at: Time,
        archived_in_dashboard: HubspotSDK::Internal::Type::Boolean,
        attached_stylesheets: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Internal::Type::HashOf[HubspotSDK::Internal::Type::Unknown]]),
        author_name: String,
        campaign: String,
        category_id: Integer,
        content_group_id: String,
        content_type_category: HubspotSDK::Cms::Page::ContentTypeCategory,
        created: Time,
        created_by_id: String,
        currently_published: HubspotSDK::Internal::Type::Boolean,
        current_state: HubspotSDK::Cms::Page::CurrentState,
        domain: String,
        dynamic_page_data_source_id: String,
        dynamic_page_data_source_type: Integer,
        dynamic_page_hub_db_table_id: String,
        enable_domain_stylesheets: HubspotSDK::Internal::Type::Boolean,
        enable_layout_stylesheets: HubspotSDK::Internal::Type::Boolean,
        featured_image: String,
        featured_image_alt_text: String,
        folder_id: String,
        footer_html: String,
        head_html: String,
        html_title: String,
        include_default_custom_css: HubspotSDK::Internal::Type::Boolean,
        language: HubspotSDK::Cms::Page::Language,
        layout_sections: ^(HubspotSDK::Internal::Type::HashOf[HubspotSDK::Cms::LayoutSection]),
        link_rel_canonical_url: String,
        mab_experiment_id: String,
        meta_description: String,
        name: String,
        page_expiry_date: Integer,
        page_expiry_enabled: HubspotSDK::Internal::Type::Boolean,
        page_expiry_redirect_id: Integer,
        page_expiry_redirect_url: String,
        page_redirected: HubspotSDK::Internal::Type::Boolean,
        password: String,
        public_access_rules: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Internal::Type::Unknown]),
        public_access_rules_enabled: HubspotSDK::Internal::Type::Boolean,
        publish_date: Time,
        publish_immediately: HubspotSDK::Internal::Type::Boolean,
        slug: String,
        state: String,
        subcategory: String,
        template_path: String,
        theme_settings_values: ^(HubspotSDK::Internal::Type::HashOf[HubspotSDK::Internal::Type::Unknown]),
        translated_from_id: String,
        translations: ^(HubspotSDK::Internal::Type::HashOf[HubspotSDK::Cms::ContentLanguageVariation]),
        updated: Time,
        updated_by_id: String,
        url: String,
        use_featured_image: HubspotSDK::Internal::Type::Boolean,
        widget_containers: ^(HubspotSDK::Internal::Type::HashOf[HubspotSDK::Internal::Type::Unknown]),
        widgets: ^(HubspotSDK::Internal::Type::HashOf[HubspotSDK::Internal::Type::Unknown])
      }
    end
  end

  def test_schedule_required_params
    skip("Prism tests are disabled")

    response = @hubspot.cms.pages.landing_pages.schedule(id: "id", publish_date: "2019-12-27T18:11:19.117Z")

    assert_pattern do
      response => nil
    end
  end

  def test_set_new_lang_primary_required_params
    skip("Prism tests are disabled")

    response = @hubspot.cms.pages.landing_pages.set_new_lang_primary(id: "id")

    assert_pattern do
      response => nil
    end
  end

  def test_update_batch_required_params
    skip("Prism tests are disabled")

    response = @hubspot.cms.pages.landing_pages.update_batch(inputs: [{}])

    assert_pattern do
      response => HubspotSDK::Cms::BatchResponsePage
    end

    assert_pattern do
      response => {
        completed_at: Time,
        results: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Cms::Page]),
        started_at: Time,
        status: HubspotSDK::Cms::BatchResponsePage::Status,
        links: ^(HubspotSDK::Internal::Type::HashOf[String]) | nil,
        requested_at: Time | nil
      }
    end
  end

  def test_update_draft_required_params
    skip("Prism tests are disabled")

    response =
      @hubspot.cms.pages.landing_pages.update_draft(
        "objectId",
        id: "id",
        ab_status: :master,
        ab_test_id: "abTestId",
        archived_at: "2019-12-27T18:11:19.117Z",
        archived_in_dashboard: true,
        attached_stylesheets: [{foo: {}}],
        author_name: "authorName",
        campaign: "campaign",
        category_id: 0,
        content_group_id: "contentGroupId",
        content_type_category: :"0",
        created: "2019-12-27T18:11:19.117Z",
        created_by_id: "createdById",
        currently_published: true,
        current_state: :AUTOMATED,
        domain: "domain",
        dynamic_page_data_source_id: "dynamicPageDataSourceId",
        dynamic_page_data_source_type: 0,
        dynamic_page_hub_db_table_id: "dynamicPageHubDbTableId",
        enable_domain_stylesheets: true,
        enable_layout_stylesheets: true,
        featured_image: "featuredImage",
        featured_image_alt_text: "featuredImageAltText",
        folder_id: "folderId",
        footer_html: "footerHtml",
        head_html: "headHtml",
        html_title: "htmlTitle",
        include_default_custom_css: true,
        language: :af,
        layout_sections: {
          foo: {
            cells: [],
            cssClass: "cssClass",
            cssId: "cssId",
            cssStyle: "cssStyle",
            label: "label",
            name: "name",
            params: {foo: {}},
            rowMetaData: [
              {
                cssClass: "cssClass",
                styles: {
                  backgroundColor: {a: 0, b: 0, g: 0, r: 0},
                  backgroundGradient: {
                    angle: {units: "units", value: 0},
                    colors: [{color: {a: 0, b: 0, g: 0, r: 0}}],
                    sideOrCorner: {horizontalSide: "horizontalSide", verticalSide: "verticalSide"}
                  },
                  backgroundImage: {
                    backgroundPosition: "backgroundPosition",
                    backgroundSize: "backgroundSize",
                    imageUrl: "imageUrl"
                  },
                  flexboxPositioning: "flexboxPositioning",
                  forceFullWidthSection: true,
                  maxWidthSectionCentering: 0,
                  verticalAlignment: "verticalAlignment"
                }
              }
            ],
            rows: [{}],
            styles: {
              backgroundColor: {a: 0, b: 0, g: 0, r: 0},
              backgroundGradient: {
                angle: {units: "units", value: 0},
                colors: [{color: {a: 0, b: 0, g: 0, r: 0}}],
                sideOrCorner: {horizontalSide: "horizontalSide", verticalSide: "verticalSide"}
              },
              backgroundImage: {
                backgroundPosition: "backgroundPosition",
                backgroundSize: "backgroundSize",
                imageUrl: "imageUrl"
              },
              flexboxPositioning: "flexboxPositioning",
              forceFullWidthSection: true,
              maxWidthSectionCentering: 0,
              verticalAlignment: "verticalAlignment"
            },
            type: "type",
            w: 0,
            x: 0
          }
        },
        link_rel_canonical_url: "linkRelCanonicalUrl",
        mab_experiment_id: "mabExperimentId",
        meta_description: "metaDescription",
        name: "name",
        page_expiry_date: 0,
        page_expiry_enabled: true,
        page_expiry_redirect_id: 0,
        page_expiry_redirect_url: "pageExpiryRedirectUrl",
        page_redirected: true,
        password: "password",
        public_access_rules: [{}],
        public_access_rules_enabled: true,
        publish_date: "2019-12-27T18:11:19.117Z",
        publish_immediately: true,
        slug: "slug",
        state: "state",
        subcategory: "subcategory",
        template_path: "templatePath",
        theme_settings_values: {foo: {}},
        translated_from_id: "translatedFromId",
        translations: {
          foo: {
            id: 0,
            archivedInDashboard: true,
            authorName: "authorName",
            campaign: "campaign",
            created: "2019-12-27T18:11:19.117Z",
            name: "name",
            password: "password",
            publicAccessRules: [{}],
            publicAccessRulesEnabled: true,
            publishDate: "2019-12-27T18:11:19.117Z",
            slug: "slug",
            state: "state",
            updated: "2019-12-27T18:11:19.117Z"
          }
        },
        updated: "2019-12-27T18:11:19.117Z",
        updated_by_id: "updatedById",
        url: "url",
        use_featured_image: true,
        widget_containers: {foo: {}},
        widgets: {foo: {}}
      )

    assert_pattern do
      response => HubspotSDK::Cms::Page
    end

    assert_pattern do
      response => {
        id: String,
        ab_status: HubspotSDK::Cms::Page::AbStatus,
        ab_test_id: String,
        archived_at: Time,
        archived_in_dashboard: HubspotSDK::Internal::Type::Boolean,
        attached_stylesheets: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Internal::Type::HashOf[HubspotSDK::Internal::Type::Unknown]]),
        author_name: String,
        campaign: String,
        category_id: Integer,
        content_group_id: String,
        content_type_category: HubspotSDK::Cms::Page::ContentTypeCategory,
        created: Time,
        created_by_id: String,
        currently_published: HubspotSDK::Internal::Type::Boolean,
        current_state: HubspotSDK::Cms::Page::CurrentState,
        domain: String,
        dynamic_page_data_source_id: String,
        dynamic_page_data_source_type: Integer,
        dynamic_page_hub_db_table_id: String,
        enable_domain_stylesheets: HubspotSDK::Internal::Type::Boolean,
        enable_layout_stylesheets: HubspotSDK::Internal::Type::Boolean,
        featured_image: String,
        featured_image_alt_text: String,
        folder_id: String,
        footer_html: String,
        head_html: String,
        html_title: String,
        include_default_custom_css: HubspotSDK::Internal::Type::Boolean,
        language: HubspotSDK::Cms::Page::Language,
        layout_sections: ^(HubspotSDK::Internal::Type::HashOf[HubspotSDK::Cms::LayoutSection]),
        link_rel_canonical_url: String,
        mab_experiment_id: String,
        meta_description: String,
        name: String,
        page_expiry_date: Integer,
        page_expiry_enabled: HubspotSDK::Internal::Type::Boolean,
        page_expiry_redirect_id: Integer,
        page_expiry_redirect_url: String,
        page_redirected: HubspotSDK::Internal::Type::Boolean,
        password: String,
        public_access_rules: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Internal::Type::Unknown]),
        public_access_rules_enabled: HubspotSDK::Internal::Type::Boolean,
        publish_date: Time,
        publish_immediately: HubspotSDK::Internal::Type::Boolean,
        slug: String,
        state: String,
        subcategory: String,
        template_path: String,
        theme_settings_values: ^(HubspotSDK::Internal::Type::HashOf[HubspotSDK::Internal::Type::Unknown]),
        translated_from_id: String,
        translations: ^(HubspotSDK::Internal::Type::HashOf[HubspotSDK::Cms::ContentLanguageVariation]),
        updated: Time,
        updated_by_id: String,
        url: String,
        use_featured_image: HubspotSDK::Internal::Type::Boolean,
        widget_containers: ^(HubspotSDK::Internal::Type::HashOf[HubspotSDK::Internal::Type::Unknown]),
        widgets: ^(HubspotSDK::Internal::Type::HashOf[HubspotSDK::Internal::Type::Unknown])
      }
    end
  end

  def test_update_folder_required_params
    skip("Prism tests are disabled")

    response =
      @hubspot.cms.pages.landing_pages.update_folder(
        "objectId",
        id: "id",
        category: 0,
        created: "2019-12-27T18:11:19.117Z",
        deleted_at: "2019-12-27T18:11:19.117Z",
        name: "name",
        parent_folder_id: 0,
        updated: "2019-12-27T18:11:19.117Z"
      )

    assert_pattern do
      response => HubspotSDK::Cms::ContentFolder
    end

    assert_pattern do
      response => {
        id: String,
        category: Integer,
        created: Time,
        deleted_at: Time,
        name: String,
        parent_folder_id: Integer,
        updated: Time
      }
    end
  end

  def test_update_folders_batch_required_params
    skip("Prism tests are disabled")

    response = @hubspot.cms.pages.landing_pages.update_folders_batch(inputs: [{}])

    assert_pattern do
      response => HubspotSDK::Cms::BatchResponseContentFolder
    end

    assert_pattern do
      response => {
        completed_at: Time,
        results: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Cms::ContentFolder]),
        started_at: Time,
        status: HubspotSDK::Cms::BatchResponseContentFolder::Status,
        links: ^(HubspotSDK::Internal::Type::HashOf[String]) | nil,
        requested_at: Time | nil
      }
    end
  end

  def test_update_languages_required_params
    skip("Prism tests are disabled")

    response =
      @hubspot.cms.pages.landing_pages.update_languages(languages: {foo: "string"}, primary_id: "primaryId")

    assert_pattern do
      response => nil
    end
  end
end
