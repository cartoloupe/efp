defmodule P39.EmployeeTest do
  use P39.ModelCase

  alias P39.Employee

  @valid_attrs %{first_name: "some content", last_name: "some content", position: "some content", separation: "2010-04-17"}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = Employee.changeset(%Employee{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = Employee.changeset(%Employee{}, @invalid_attrs)
    refute changeset.valid?
  end
end
