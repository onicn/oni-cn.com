defmodule Onicn.Server do
  import Plug.Conn

  def init([]), do: []

  def call(conn, []) do
    priv_dir = :code.priv_dir(:onicn)
    request_path = Map.get(conn, :request_path)

    conn
    |> Map.get(:path_info)
    |> case do
      ["img" | _] ->
        Path.join(priv_dir, request_path)

      ["content_images" | _] ->
        Path.join(priv_dir, request_path)

      _ ->
        [priv_dir, "dist", request_path]
        |> Path.join()
        |> then(fn path ->
          (File.dir?(path) && Path.join(path, "index.html")) || path
        end)
    end
    |> then(fn path ->
      if File.exists?(path) do
        content_type = MIME.from_path(path)

        conn
        |> put_resp_content_type(content_type)
        |> send_resp(200, File.read!(path))
      else
        send_resp(conn, 404, "Not Found")
      end
    end)
  end
end
