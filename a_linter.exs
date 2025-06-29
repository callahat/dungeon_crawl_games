defmodule ALinter do
  # Expects a filename ending in ".json", case insensitive
  def lint!(filename) do
    {basename, ext} = String.split_at(filename, -5)
    linted_filename = "#{ basename }_linted#{ ext }"
    pretty_encoded = Jason.decode!(File.read!(filename)) |> StableJason.encode!(sorter: &_sorter/2, pretty: true)
    File.write!(linted_filename, pretty_encoded)

    a = JSON.decode(File.read!(filename))
    b = JSON.decode(File.read!(linted_filename))

    if a == b do
      IO.puts "original and lint are equivalent"
    else
      IO.puts "Uh Oh, original and lint seem to not be equivalent"
    end
  end

  defp _sorter(a,b) do
    if String.length(inspect(a)) == String.length(inspect(b)),
       do: a < b,
       else: String.length(inspect(a)) < String.length(inspect(b))
  end
end