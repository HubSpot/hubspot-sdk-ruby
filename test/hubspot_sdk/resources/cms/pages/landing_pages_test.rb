# frozen_string_literal: true

require_relative "../../../test_helper"

class HubSpotSDK::Test::Resources::Cms::Pages::LandingPagesTest < HubSpotSDK::Test::ResourceTest
  def test_create_required_params
    skip("Mock server tests are disabled")

    response =
      @hubspot.cms.pages.landing_pages.create(
        id: "id",
        ab_status: :automated_loser_variant,
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
        current_state: :AGENT_GENERATED,
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
        language: :aa,
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
                    angle: {units: :deg, value: 0},
                    colors: [{color: {a: 0, b: 0, g: 0, r: 0}}],
                    sideOrCorner: {horizontalSide: :CENTER, verticalSide: :BOTTOM}
                  },
                  backgroundImage: {
                    backgroundPosition: "backgroundPosition",
                    backgroundSize: "backgroundSize",
                    imageUrl: "imageUrl"
                  },
                  flexboxPositioning: :BOTTOM_CENTER,
                  forceFullWidthSection: true,
                  maxWidthSectionCentering: 0,
                  verticalAlignment: :BOTTOM
                }
              }
            ],
            rows: [{}],
            styles: {
              backgroundColor: {a: 0, b: 0, g: 0, r: 0},
              backgroundGradient: {
                angle: {units: :deg, value: 0},
                colors: [{color: {a: 0, b: 0, g: 0, r: 0}}],
                sideOrCorner: {horizontalSide: :CENTER, verticalSide: :BOTTOM}
              },
              backgroundImage: {
                backgroundPosition: "backgroundPosition",
                backgroundSize: "backgroundSize",
                imageUrl: "imageUrl"
              },
              flexboxPositioning: :BOTTOM_CENTER,
              forceFullWidthSection: true,
              maxWidthSectionCentering: 0,
              verticalAlignment: :BOTTOM
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
            campaignName: "campaignName",
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
      response => HubSpotSDK::Cms::PageData
    end

    assert_pattern do
      response => {
        id: String,
        ab_status: HubSpotSDK::Cms::PageData::AbStatus,
        ab_test_id: String,
        archived_at: Time,
        archived_in_dashboard: HubSpotSDK::Internal::Type::Boolean,
        attached_stylesheets: ^(HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Internal::Type::HashOf[HubSpotSDK::Internal::Type::Unknown]]),
        author_name: String,
        campaign: String,
        category_id: Integer,
        content_group_id: String,
        content_type_category: HubSpotSDK::Cms::PageData::ContentTypeCategory,
        created: Time,
        created_by_id: String,
        currently_published: HubSpotSDK::Internal::Type::Boolean,
        current_state: HubSpotSDK::Cms::PageData::CurrentState,
        domain: String,
        dynamic_page_data_source_id: String,
        dynamic_page_data_source_type: Integer,
        dynamic_page_hub_db_table_id: String,
        enable_domain_stylesheets: HubSpotSDK::Internal::Type::Boolean,
        enable_layout_stylesheets: HubSpotSDK::Internal::Type::Boolean,
        featured_image: String,
        featured_image_alt_text: String,
        folder_id: String,
        footer_html: String,
        head_html: String,
        html_title: String,
        include_default_custom_css: HubSpotSDK::Internal::Type::Boolean,
        language: HubSpotSDK::Cms::PageData::Language,
        layout_sections: ^(HubSpotSDK::Internal::Type::HashOf[HubSpotSDK::Cms::LayoutSection]),
        link_rel_canonical_url: String,
        mab_experiment_id: String,
        meta_description: String,
        name: String,
        page_expiry_date: Integer,
        page_expiry_enabled: HubSpotSDK::Internal::Type::Boolean,
        page_expiry_redirect_id: Integer,
        page_expiry_redirect_url: String,
        page_redirected: HubSpotSDK::Internal::Type::Boolean,
        password: String,
        public_access_rules: ^(HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Internal::Type::Unknown]),
        public_access_rules_enabled: HubSpotSDK::Internal::Type::Boolean,
        publish_date: Time,
        publish_immediately: HubSpotSDK::Internal::Type::Boolean,
        slug: String,
        state: String,
        subcategory: String,
        template_path: String,
        theme_settings_values: ^(HubSpotSDK::Internal::Type::HashOf[HubSpotSDK::Internal::Type::Unknown]),
        translated_from_id: String,
        translations: ^(HubSpotSDK::Internal::Type::HashOf[HubSpotSDK::Cms::ContentLanguageVariation]),
        updated: Time,
        updated_by_id: String,
        url: String,
        use_featured_image: HubSpotSDK::Internal::Type::Boolean,
        widget_containers: ^(HubSpotSDK::Internal::Type::HashOf[HubSpotSDK::Internal::Type::Unknown]),
        widgets: ^(HubSpotSDK::Internal::Type::HashOf[HubSpotSDK::Internal::Type::Unknown])
      }
    end
  end

  def test_update_required_params
    skip("Mock server tests are disabled")

    response =
      @hubspot.cms.pages.landing_pages.update(
        "objectId",
        id: "id",
        ab_status: :automated_loser_variant,
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
        current_state: :AGENT_GENERATED,
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
        language: :aa,
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
                    angle: {units: :deg, value: 0},
                    colors: [{color: {a: 0, b: 0, g: 0, r: 0}}],
                    sideOrCorner: {horizontalSide: :CENTER, verticalSide: :BOTTOM}
                  },
                  backgroundImage: {
                    backgroundPosition: "backgroundPosition",
                    backgroundSize: "backgroundSize",
                    imageUrl: "imageUrl"
                  },
                  flexboxPositioning: :BOTTOM_CENTER,
                  forceFullWidthSection: true,
                  maxWidthSectionCentering: 0,
                  verticalAlignment: :BOTTOM
                }
              }
            ],
            rows: [{}],
            styles: {
              backgroundColor: {a: 0, b: 0, g: 0, r: 0},
              backgroundGradient: {
                angle: {units: :deg, value: 0},
                colors: [{color: {a: 0, b: 0, g: 0, r: 0}}],
                sideOrCorner: {horizontalSide: :CENTER, verticalSide: :BOTTOM}
              },
              backgroundImage: {
                backgroundPosition: "backgroundPosition",
                backgroundSize: "backgroundSize",
                imageUrl: "imageUrl"
              },
              flexboxPositioning: :BOTTOM_CENTER,
              forceFullWidthSection: true,
              maxWidthSectionCentering: 0,
              verticalAlignment: :BOTTOM
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
            campaignName: "campaignName",
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
      response => HubSpotSDK::Cms::PageData
    end

    assert_pattern do
      response => {
        id: String,
        ab_status: HubSpotSDK::Cms::PageData::AbStatus,
        ab_test_id: String,
        archived_at: Time,
        archived_in_dashboard: HubSpotSDK::Internal::Type::Boolean,
        attached_stylesheets: ^(HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Internal::Type::HashOf[HubSpotSDK::Internal::Type::Unknown]]),
        author_name: String,
        campaign: String,
        category_id: Integer,
        content_group_id: String,
        content_type_category: HubSpotSDK::Cms::PageData::ContentTypeCategory,
        created: Time,
        created_by_id: String,
        currently_published: HubSpotSDK::Internal::Type::Boolean,
        current_state: HubSpotSDK::Cms::PageData::CurrentState,
        domain: String,
        dynamic_page_data_source_id: String,
        dynamic_page_data_source_type: Integer,
        dynamic_page_hub_db_table_id: String,
        enable_domain_stylesheets: HubSpotSDK::Internal::Type::Boolean,
        enable_layout_stylesheets: HubSpotSDK::Internal::Type::Boolean,
        featured_image: String,
        featured_image_alt_text: String,
        folder_id: String,
        footer_html: String,
        head_html: String,
        html_title: String,
        include_default_custom_css: HubSpotSDK::Internal::Type::Boolean,
        language: HubSpotSDK::Cms::PageData::Language,
        layout_sections: ^(HubSpotSDK::Internal::Type::HashOf[HubSpotSDK::Cms::LayoutSection]),
        link_rel_canonical_url: String,
        mab_experiment_id: String,
        meta_description: String,
        name: String,
        page_expiry_date: Integer,
        page_expiry_enabled: HubSpotSDK::Internal::Type::Boolean,
        page_expiry_redirect_id: Integer,
        page_expiry_redirect_url: String,
        page_redirected: HubSpotSDK::Internal::Type::Boolean,
        password: String,
        public_access_rules: ^(HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Internal::Type::Unknown]),
        public_access_rules_enabled: HubSpotSDK::Internal::Type::Boolean,
        publish_date: Time,
        publish_immediately: HubSpotSDK::Internal::Type::Boolean,
        slug: String,
        state: String,
        subcategory: String,
        template_path: String,
        theme_settings_values: ^(HubSpotSDK::Internal::Type::HashOf[HubSpotSDK::Internal::Type::Unknown]),
        translated_from_id: String,
        translations: ^(HubSpotSDK::Internal::Type::HashOf[HubSpotSDK::Cms::ContentLanguageVariation]),
        updated: Time,
        updated_by_id: String,
        url: String,
        use_featured_image: HubSpotSDK::Internal::Type::Boolean,
        widget_containers: ^(HubSpotSDK::Internal::Type::HashOf[HubSpotSDK::Internal::Type::Unknown]),
        widgets: ^(HubSpotSDK::Internal::Type::HashOf[HubSpotSDK::Internal::Type::Unknown])
      }
    end
  end

  def test_list
    skip("Mock server tests are disabled")

    response = @hubspot.cms.pages.landing_pages.list

    assert_pattern do
      response => HubSpotSDK::Internal::Page
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => HubSpotSDK::Cms::PageData
    end

    assert_pattern do
      row => {
        id: String,
        ab_status: HubSpotSDK::Cms::PageData::AbStatus,
        ab_test_id: String,
        archived_at: Time,
        archived_in_dashboard: HubSpotSDK::Internal::Type::Boolean,
        attached_stylesheets: ^(HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Internal::Type::HashOf[HubSpotSDK::Internal::Type::Unknown]]),
        author_name: String,
        campaign: String,
        category_id: Integer,
        content_group_id: String,
        content_type_category: HubSpotSDK::Cms::PageData::ContentTypeCategory,
        created: Time,
        created_by_id: String,
        currently_published: HubSpotSDK::Internal::Type::Boolean,
        current_state: HubSpotSDK::Cms::PageData::CurrentState,
        domain: String,
        dynamic_page_data_source_id: String,
        dynamic_page_data_source_type: Integer,
        dynamic_page_hub_db_table_id: String,
        enable_domain_stylesheets: HubSpotSDK::Internal::Type::Boolean,
        enable_layout_stylesheets: HubSpotSDK::Internal::Type::Boolean,
        featured_image: String,
        featured_image_alt_text: String,
        folder_id: String,
        footer_html: String,
        head_html: String,
        html_title: String,
        include_default_custom_css: HubSpotSDK::Internal::Type::Boolean,
        language: HubSpotSDK::Cms::PageData::Language,
        layout_sections: ^(HubSpotSDK::Internal::Type::HashOf[HubSpotSDK::Cms::LayoutSection]),
        link_rel_canonical_url: String,
        mab_experiment_id: String,
        meta_description: String,
        name: String,
        page_expiry_date: Integer,
        page_expiry_enabled: HubSpotSDK::Internal::Type::Boolean,
        page_expiry_redirect_id: Integer,
        page_expiry_redirect_url: String,
        page_redirected: HubSpotSDK::Internal::Type::Boolean,
        password: String,
        public_access_rules: ^(HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Internal::Type::Unknown]),
        public_access_rules_enabled: HubSpotSDK::Internal::Type::Boolean,
        publish_date: Time,
        publish_immediately: HubSpotSDK::Internal::Type::Boolean,
        slug: String,
        state: String,
        subcategory: String,
        template_path: String,
        theme_settings_values: ^(HubSpotSDK::Internal::Type::HashOf[HubSpotSDK::Internal::Type::Unknown]),
        translated_from_id: String,
        translations: ^(HubSpotSDK::Internal::Type::HashOf[HubSpotSDK::Cms::ContentLanguageVariation]),
        updated: Time,
        updated_by_id: String,
        url: String,
        use_featured_image: HubSpotSDK::Internal::Type::Boolean,
        widget_containers: ^(HubSpotSDK::Internal::Type::HashOf[HubSpotSDK::Internal::Type::Unknown]),
        widgets: ^(HubSpotSDK::Internal::Type::HashOf[HubSpotSDK::Internal::Type::Unknown])
      }
    end
  end

  def test_delete
    skip("Mock server tests are disabled")

    response = @hubspot.cms.pages.landing_pages.delete("objectId")

    assert_pattern do
      response => nil
    end
  end

  def test_clone__required_params
    skip("Mock server tests are disabled")

    response = @hubspot.cms.pages.landing_pages.clone_(id: "id")

    assert_pattern do
      response => HubSpotSDK::Cms::PageData
    end

    assert_pattern do
      response => {
        id: String,
        ab_status: HubSpotSDK::Cms::PageData::AbStatus,
        ab_test_id: String,
        archived_at: Time,
        archived_in_dashboard: HubSpotSDK::Internal::Type::Boolean,
        attached_stylesheets: ^(HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Internal::Type::HashOf[HubSpotSDK::Internal::Type::Unknown]]),
        author_name: String,
        campaign: String,
        category_id: Integer,
        content_group_id: String,
        content_type_category: HubSpotSDK::Cms::PageData::ContentTypeCategory,
        created: Time,
        created_by_id: String,
        currently_published: HubSpotSDK::Internal::Type::Boolean,
        current_state: HubSpotSDK::Cms::PageData::CurrentState,
        domain: String,
        dynamic_page_data_source_id: String,
        dynamic_page_data_source_type: Integer,
        dynamic_page_hub_db_table_id: String,
        enable_domain_stylesheets: HubSpotSDK::Internal::Type::Boolean,
        enable_layout_stylesheets: HubSpotSDK::Internal::Type::Boolean,
        featured_image: String,
        featured_image_alt_text: String,
        folder_id: String,
        footer_html: String,
        head_html: String,
        html_title: String,
        include_default_custom_css: HubSpotSDK::Internal::Type::Boolean,
        language: HubSpotSDK::Cms::PageData::Language,
        layout_sections: ^(HubSpotSDK::Internal::Type::HashOf[HubSpotSDK::Cms::LayoutSection]),
        link_rel_canonical_url: String,
        mab_experiment_id: String,
        meta_description: String,
        name: String,
        page_expiry_date: Integer,
        page_expiry_enabled: HubSpotSDK::Internal::Type::Boolean,
        page_expiry_redirect_id: Integer,
        page_expiry_redirect_url: String,
        page_redirected: HubSpotSDK::Internal::Type::Boolean,
        password: String,
        public_access_rules: ^(HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Internal::Type::Unknown]),
        public_access_rules_enabled: HubSpotSDK::Internal::Type::Boolean,
        publish_date: Time,
        publish_immediately: HubSpotSDK::Internal::Type::Boolean,
        slug: String,
        state: String,
        subcategory: String,
        template_path: String,
        theme_settings_values: ^(HubSpotSDK::Internal::Type::HashOf[HubSpotSDK::Internal::Type::Unknown]),
        translated_from_id: String,
        translations: ^(HubSpotSDK::Internal::Type::HashOf[HubSpotSDK::Cms::ContentLanguageVariation]),
        updated: Time,
        updated_by_id: String,
        url: String,
        use_featured_image: HubSpotSDK::Internal::Type::Boolean,
        widget_containers: ^(HubSpotSDK::Internal::Type::HashOf[HubSpotSDK::Internal::Type::Unknown]),
        widgets: ^(HubSpotSDK::Internal::Type::HashOf[HubSpotSDK::Internal::Type::Unknown])
      }
    end
  end

  def test_get
    skip("Mock server tests are disabled")

    response = @hubspot.cms.pages.landing_pages.get("objectId")

    assert_pattern do
      response => HubSpotSDK::Cms::PageData
    end

    assert_pattern do
      response => {
        id: String,
        ab_status: HubSpotSDK::Cms::PageData::AbStatus,
        ab_test_id: String,
        archived_at: Time,
        archived_in_dashboard: HubSpotSDK::Internal::Type::Boolean,
        attached_stylesheets: ^(HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Internal::Type::HashOf[HubSpotSDK::Internal::Type::Unknown]]),
        author_name: String,
        campaign: String,
        category_id: Integer,
        content_group_id: String,
        content_type_category: HubSpotSDK::Cms::PageData::ContentTypeCategory,
        created: Time,
        created_by_id: String,
        currently_published: HubSpotSDK::Internal::Type::Boolean,
        current_state: HubSpotSDK::Cms::PageData::CurrentState,
        domain: String,
        dynamic_page_data_source_id: String,
        dynamic_page_data_source_type: Integer,
        dynamic_page_hub_db_table_id: String,
        enable_domain_stylesheets: HubSpotSDK::Internal::Type::Boolean,
        enable_layout_stylesheets: HubSpotSDK::Internal::Type::Boolean,
        featured_image: String,
        featured_image_alt_text: String,
        folder_id: String,
        footer_html: String,
        head_html: String,
        html_title: String,
        include_default_custom_css: HubSpotSDK::Internal::Type::Boolean,
        language: HubSpotSDK::Cms::PageData::Language,
        layout_sections: ^(HubSpotSDK::Internal::Type::HashOf[HubSpotSDK::Cms::LayoutSection]),
        link_rel_canonical_url: String,
        mab_experiment_id: String,
        meta_description: String,
        name: String,
        page_expiry_date: Integer,
        page_expiry_enabled: HubSpotSDK::Internal::Type::Boolean,
        page_expiry_redirect_id: Integer,
        page_expiry_redirect_url: String,
        page_redirected: HubSpotSDK::Internal::Type::Boolean,
        password: String,
        public_access_rules: ^(HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Internal::Type::Unknown]),
        public_access_rules_enabled: HubSpotSDK::Internal::Type::Boolean,
        publish_date: Time,
        publish_immediately: HubSpotSDK::Internal::Type::Boolean,
        slug: String,
        state: String,
        subcategory: String,
        template_path: String,
        theme_settings_values: ^(HubSpotSDK::Internal::Type::HashOf[HubSpotSDK::Internal::Type::Unknown]),
        translated_from_id: String,
        translations: ^(HubSpotSDK::Internal::Type::HashOf[HubSpotSDK::Cms::ContentLanguageVariation]),
        updated: Time,
        updated_by_id: String,
        url: String,
        use_featured_image: HubSpotSDK::Internal::Type::Boolean,
        widget_containers: ^(HubSpotSDK::Internal::Type::HashOf[HubSpotSDK::Internal::Type::Unknown]),
        widgets: ^(HubSpotSDK::Internal::Type::HashOf[HubSpotSDK::Internal::Type::Unknown])
      }
    end
  end

  def test_get_draft
    skip("Mock server tests are disabled")

    response = @hubspot.cms.pages.landing_pages.get_draft("objectId")

    assert_pattern do
      response => HubSpotSDK::Cms::PageData
    end

    assert_pattern do
      response => {
        id: String,
        ab_status: HubSpotSDK::Cms::PageData::AbStatus,
        ab_test_id: String,
        archived_at: Time,
        archived_in_dashboard: HubSpotSDK::Internal::Type::Boolean,
        attached_stylesheets: ^(HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Internal::Type::HashOf[HubSpotSDK::Internal::Type::Unknown]]),
        author_name: String,
        campaign: String,
        category_id: Integer,
        content_group_id: String,
        content_type_category: HubSpotSDK::Cms::PageData::ContentTypeCategory,
        created: Time,
        created_by_id: String,
        currently_published: HubSpotSDK::Internal::Type::Boolean,
        current_state: HubSpotSDK::Cms::PageData::CurrentState,
        domain: String,
        dynamic_page_data_source_id: String,
        dynamic_page_data_source_type: Integer,
        dynamic_page_hub_db_table_id: String,
        enable_domain_stylesheets: HubSpotSDK::Internal::Type::Boolean,
        enable_layout_stylesheets: HubSpotSDK::Internal::Type::Boolean,
        featured_image: String,
        featured_image_alt_text: String,
        folder_id: String,
        footer_html: String,
        head_html: String,
        html_title: String,
        include_default_custom_css: HubSpotSDK::Internal::Type::Boolean,
        language: HubSpotSDK::Cms::PageData::Language,
        layout_sections: ^(HubSpotSDK::Internal::Type::HashOf[HubSpotSDK::Cms::LayoutSection]),
        link_rel_canonical_url: String,
        mab_experiment_id: String,
        meta_description: String,
        name: String,
        page_expiry_date: Integer,
        page_expiry_enabled: HubSpotSDK::Internal::Type::Boolean,
        page_expiry_redirect_id: Integer,
        page_expiry_redirect_url: String,
        page_redirected: HubSpotSDK::Internal::Type::Boolean,
        password: String,
        public_access_rules: ^(HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Internal::Type::Unknown]),
        public_access_rules_enabled: HubSpotSDK::Internal::Type::Boolean,
        publish_date: Time,
        publish_immediately: HubSpotSDK::Internal::Type::Boolean,
        slug: String,
        state: String,
        subcategory: String,
        template_path: String,
        theme_settings_values: ^(HubSpotSDK::Internal::Type::HashOf[HubSpotSDK::Internal::Type::Unknown]),
        translated_from_id: String,
        translations: ^(HubSpotSDK::Internal::Type::HashOf[HubSpotSDK::Cms::ContentLanguageVariation]),
        updated: Time,
        updated_by_id: String,
        url: String,
        use_featured_image: HubSpotSDK::Internal::Type::Boolean,
        widget_containers: ^(HubSpotSDK::Internal::Type::HashOf[HubSpotSDK::Internal::Type::Unknown]),
        widgets: ^(HubSpotSDK::Internal::Type::HashOf[HubSpotSDK::Internal::Type::Unknown])
      }
    end
  end

  def test_push_draft_live
    skip("Mock server tests are disabled")

    response = @hubspot.cms.pages.landing_pages.push_draft_live("objectId")

    assert_pattern do
      response => nil
    end
  end

  def test_reset_draft
    skip("Mock server tests are disabled")

    response = @hubspot.cms.pages.landing_pages.reset_draft("objectId")

    assert_pattern do
      response => nil
    end
  end

  def test_schedule_required_params
    skip("Mock server tests are disabled")

    response = @hubspot.cms.pages.landing_pages.schedule(id: "id", publish_date: "2019-12-27T18:11:19.117Z")

    assert_pattern do
      response => nil
    end
  end

  def test_update_draft_required_params
    skip("Mock server tests are disabled")

    response =
      @hubspot.cms.pages.landing_pages.update_draft(
        "objectId",
        id: "id",
        ab_status: :automated_loser_variant,
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
        current_state: :AGENT_GENERATED,
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
        language: :aa,
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
                    angle: {units: :deg, value: 0},
                    colors: [{color: {a: 0, b: 0, g: 0, r: 0}}],
                    sideOrCorner: {horizontalSide: :CENTER, verticalSide: :BOTTOM}
                  },
                  backgroundImage: {
                    backgroundPosition: "backgroundPosition",
                    backgroundSize: "backgroundSize",
                    imageUrl: "imageUrl"
                  },
                  flexboxPositioning: :BOTTOM_CENTER,
                  forceFullWidthSection: true,
                  maxWidthSectionCentering: 0,
                  verticalAlignment: :BOTTOM
                }
              }
            ],
            rows: [{}],
            styles: {
              backgroundColor: {a: 0, b: 0, g: 0, r: 0},
              backgroundGradient: {
                angle: {units: :deg, value: 0},
                colors: [{color: {a: 0, b: 0, g: 0, r: 0}}],
                sideOrCorner: {horizontalSide: :CENTER, verticalSide: :BOTTOM}
              },
              backgroundImage: {
                backgroundPosition: "backgroundPosition",
                backgroundSize: "backgroundSize",
                imageUrl: "imageUrl"
              },
              flexboxPositioning: :BOTTOM_CENTER,
              forceFullWidthSection: true,
              maxWidthSectionCentering: 0,
              verticalAlignment: :BOTTOM
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
            campaignName: "campaignName",
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
      response => HubSpotSDK::Cms::PageData
    end

    assert_pattern do
      response => {
        id: String,
        ab_status: HubSpotSDK::Cms::PageData::AbStatus,
        ab_test_id: String,
        archived_at: Time,
        archived_in_dashboard: HubSpotSDK::Internal::Type::Boolean,
        attached_stylesheets: ^(HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Internal::Type::HashOf[HubSpotSDK::Internal::Type::Unknown]]),
        author_name: String,
        campaign: String,
        category_id: Integer,
        content_group_id: String,
        content_type_category: HubSpotSDK::Cms::PageData::ContentTypeCategory,
        created: Time,
        created_by_id: String,
        currently_published: HubSpotSDK::Internal::Type::Boolean,
        current_state: HubSpotSDK::Cms::PageData::CurrentState,
        domain: String,
        dynamic_page_data_source_id: String,
        dynamic_page_data_source_type: Integer,
        dynamic_page_hub_db_table_id: String,
        enable_domain_stylesheets: HubSpotSDK::Internal::Type::Boolean,
        enable_layout_stylesheets: HubSpotSDK::Internal::Type::Boolean,
        featured_image: String,
        featured_image_alt_text: String,
        folder_id: String,
        footer_html: String,
        head_html: String,
        html_title: String,
        include_default_custom_css: HubSpotSDK::Internal::Type::Boolean,
        language: HubSpotSDK::Cms::PageData::Language,
        layout_sections: ^(HubSpotSDK::Internal::Type::HashOf[HubSpotSDK::Cms::LayoutSection]),
        link_rel_canonical_url: String,
        mab_experiment_id: String,
        meta_description: String,
        name: String,
        page_expiry_date: Integer,
        page_expiry_enabled: HubSpotSDK::Internal::Type::Boolean,
        page_expiry_redirect_id: Integer,
        page_expiry_redirect_url: String,
        page_redirected: HubSpotSDK::Internal::Type::Boolean,
        password: String,
        public_access_rules: ^(HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Internal::Type::Unknown]),
        public_access_rules_enabled: HubSpotSDK::Internal::Type::Boolean,
        publish_date: Time,
        publish_immediately: HubSpotSDK::Internal::Type::Boolean,
        slug: String,
        state: String,
        subcategory: String,
        template_path: String,
        theme_settings_values: ^(HubSpotSDK::Internal::Type::HashOf[HubSpotSDK::Internal::Type::Unknown]),
        translated_from_id: String,
        translations: ^(HubSpotSDK::Internal::Type::HashOf[HubSpotSDK::Cms::ContentLanguageVariation]),
        updated: Time,
        updated_by_id: String,
        url: String,
        use_featured_image: HubSpotSDK::Internal::Type::Boolean,
        widget_containers: ^(HubSpotSDK::Internal::Type::HashOf[HubSpotSDK::Internal::Type::Unknown]),
        widgets: ^(HubSpotSDK::Internal::Type::HashOf[HubSpotSDK::Internal::Type::Unknown])
      }
    end
  end
end
