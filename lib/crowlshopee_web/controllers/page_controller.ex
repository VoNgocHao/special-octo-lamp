defmodule CrowlshopeeWeb.PageController do
  use CrowlshopeeWeb, :controller

  def index(conn, _params) do
url = "https://shopee.vn/api/v4/shop/get_categories?limit=20&offset=0&shopid=88201679"
    {:ok, data} = HTTPoison.get(url)
    render(conn, "index.html", categorys: Poison.decode!(data.body))
  end

  @spec vcategory(Plug.Conn.t(), any) :: Plug.Conn.t()
  def vcategory(conn, _params) do
    url = "https://shopee.vn/api/v4/search/search_items?by=pop&limit=30&match_id=88201679&newest=0&order=desc&page_type=shop&scenario=PAGE_OTHERS&version=2"
    {:ok, data} = HTTPoison.get(url)
    render(conn, "category.json", categorys: Poison.decode!(data.body))
  end
end
