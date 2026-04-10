# frozen_string_literal: true

require_relative "../../../../test_helper"

class HubSpotSDK::Test::Resources::Cms::Blogs::Posts::MultiLanguageTest < HubSpotSDK::Test::ResourceTest
  def test_attach_to_lang_group_required_params
    skip("Mock server tests are disabled")

    response =
      @hubspot.cms.blogs.posts.multi_language.attach_to_lang_group(
        id: "id",
        language: :aa,
        primary_id: "primaryId"
      )

    assert_pattern do
      response => StringIO
    end
  end

  def test_create_lang_variation_required_params
    skip("Mock server tests are disabled")

    response = @hubspot.cms.blogs.posts.multi_language.create_lang_variation(id: "id")

    assert_pattern do
      response => StringIO
    end
  end

  def test_detach_from_lang_group_required_params
    skip("Mock server tests are disabled")

    response = @hubspot.cms.blogs.posts.multi_language.detach_from_lang_group(id: "id")

    assert_pattern do
      response => StringIO
    end
  end

  def test_set_lang_primary_required_params
    skip("Mock server tests are disabled")

    response = @hubspot.cms.blogs.posts.multi_language.set_lang_primary(id: "id")

    assert_pattern do
      response => nil
    end
  end

  def test_update_langs_required_params
    skip("Mock server tests are disabled")

    response =
      @hubspot.cms.blogs.posts.multi_language.update_langs(languages: {foo: :aa}, primary_id: "primaryId")

    assert_pattern do
      response => StringIO
    end
  end
end
