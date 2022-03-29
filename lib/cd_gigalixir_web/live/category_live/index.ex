defmodule CdGigalixirWeb.CategoryLive.Index do
  use CdGigalixirWeb, :live_view

  alias CdGigalixir.Categories
  alias CdGigalixir.Categories.Category

  @impl true
  def mount(_params, _session, socket) do
    {:ok, assign(socket, :name, list_name())}
  end

  @impl true
  def handle_params(params, _url, socket) do
    {:noreply, apply_action(socket, socket.assigns.live_action, params)}
  end

  defp apply_action(socket, :edit, %{"id" => id}) do
    socket
    |> assign(:page_title, "Edit Category")
    |> assign(:category, Categories.get_category!(id))
  end

  defp apply_action(socket, :new, _params) do
    socket
    |> assign(:page_title, "New Category")
    |> assign(:category, %Category{})
  end

  defp apply_action(socket, :index, _params) do
    socket
    |> assign(:page_title, "Listing Name")
    |> assign(:category, nil)
  end

  @impl true
  def handle_event("delete", %{"id" => id}, socket) do
    category = Categories.get_category!(id)
    {:ok, _} = Categories.delete_category(category)

    {:noreply, assign(socket, :name, list_name())}
  end

  defp list_name do
    Categories.list_name()
  end
end
