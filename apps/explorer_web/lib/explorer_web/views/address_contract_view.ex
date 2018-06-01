defmodule ExplorerWeb.AddressContractView do
  use ExplorerWeb, :view

  alias Explorer.Chain.{Address, SmartContract}

  def smart_contract_verified?(%Address{smart_contract: nil}), do: false
  def smart_contract_verified?(%Address{smart_contract: %SmartContract{}}), do: true

  def format_smart_contract_abi(abi), do: Poison.encode!(abi, pretty: true)

  def format_optimization(true), do: gettext("true")
  def format_optimization(false), do: gettext("false")
end
