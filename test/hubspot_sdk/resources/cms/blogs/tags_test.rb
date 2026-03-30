# frozen_string_literal: true

require_relative "../../../test_helper"

class HubspotSDK::Test::Resources::Cms::Blogs::TagsTest < HubspotSDK::Test::ResourceTest
  def test_create_required_params
    skip("Mock server tests are disabled")

    response =
      @hubspot.cms.blogs.tags.create(
        id: "id",
        created: "2019-12-27T18:11:19.117Z",
        deleted_at: "2019-12-27T18:11:19.117Z",
        language: :aa,
        name: "name",
        slug: "slug",
        translated_from_id: 0,
        updated: "2019-12-27T18:11:19.117Z"
      )

    assert_pattern do
      response => StringIO
    end
  end

  def test_update_required_params
    skip("Mock server tests are disabled")

    response =
      @hubspot.cms.blogs.tags.update(
        "objectId",
        id: "id",
        created: "2019-12-27T18:11:19.117Z",
        deleted_at: "2019-12-27T18:11:19.117Z",
        language: :aa,
        name: "name",
        slug: "slug",
        translated_from_id: 0,
        updated: "2019-12-27T18:11:19.117Z"
      )

    assert_pattern do
      response => StringIO
    end
  end

  def test_list
    skip("Mock server tests are disabled")

    response = @hubspot.cms.blogs.tags.list

    assert_pattern do
      response => StringIO
    end
  end

  def test_delete
    skip("Mock server tests are disabled")

    response = @hubspot.cms.blogs.tags.delete("objectId")

    assert_pattern do
      response => nil
    end
  end

  def test_attach_to_lang_group_required_params
    skip("Mock server tests are disabled")

    response = @hubspot.cms.blogs.tags.attach_to_lang_group(id: "id", language: :aa, primary_id: "primaryId")

    assert_pattern do
      response => StringIO
    end
  end

  def test_create_lang_variation_required_params
    skip("Mock server tests are disabled")

    response = @hubspot.cms.blogs.tags.create_lang_variation(id: "id", name: "name")

    assert_pattern do
      response => StringIO
    end
  end

  def test_detach_from_lang_group_required_params
    skip("Mock server tests are disabled")

    response = @hubspot.cms.blogs.tags.detach_from_lang_group(id: "id")

    assert_pattern do
      response => StringIO
    end
  end

  def test_get
    skip("Mock server tests are disabled")

    response = @hubspot.cms.blogs.tags.get("objectId")

    assert_pattern do
      response => StringIO
    end
  end

  def test_list_authors_cursor
    skip("Mock server tests are disabled")

    response = @hubspot.cms.blogs.tags.list_authors_cursor

    assert_pattern do
      response => StringIO
    end
  end

  def test_list_authors_cursor_by_query
    skip("Mock server tests are disabled")

    response = @hubspot.cms.blogs.tags.list_authors_cursor_by_query

    assert_pattern do
      response => StringIO
    end
  end

  def test_list_cursor
    skip("Mock server tests are disabled")

    response = @hubspot.cms.blogs.tags.list_cursor

    assert_pattern do
      response => StringIO
    end
  end

  def test_list_cursor_by_query
    skip("Mock server tests are disabled")

    response = @hubspot.cms.blogs.tags.list_cursor_by_query

    assert_pattern do
      response => StringIO
    end
  end

  def test_list_posts_cursor
    skip("Mock server tests are disabled")

    response = @hubspot.cms.blogs.tags.list_posts_cursor

    assert_pattern do
      response => StringIO
    end
  end

  def test_list_posts_cursor_by_query
    skip("Mock server tests are disabled")

    response = @hubspot.cms.blogs.tags.list_posts_cursor_by_query

    assert_pattern do
      response => StringIO
    end
  end

  def test_set_lang_primary_required_params
    skip("Mock server tests are disabled")

    response = @hubspot.cms.blogs.tags.set_lang_primary(id: "id")

    assert_pattern do
      response => nil
    end
  end

  def test_update_langs_required_params
    skip("Mock server tests are disabled")

    response = @hubspot.cms.blogs.tags.update_langs(languages: {foo: :aa}, primary_id: "primaryId")

    assert_pattern do
      response => StringIO
    end
  end
end
