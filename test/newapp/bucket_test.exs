defmodule NEWAPP.BucketTest do
  use ExUnit.Case
  doctest NEWAPP.Bucket

  test "create a bucker" do
    {:ok, bucket} = NEWAPP.Bucket.start_link("asd")
    assert NEWAPP.Bucket.get(bucket, :nhi) == nil
  end

  test "put new item in the bucket" do
    {:ok, bucket} = NEWAPP.Bucket.start_link("asd")
    NEWAPP.Bucket.put(bucket, :item, "eggs")
    assert NEWAPP.Bucket.get(bucket, :item) == "eggs"
  end
end
