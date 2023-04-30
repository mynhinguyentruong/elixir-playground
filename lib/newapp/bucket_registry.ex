defmodule Bucket.Registry do

  Registry.start_link(keys: :unique, {Name.Registry, "keyword"})
end
