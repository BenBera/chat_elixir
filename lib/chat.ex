defmodule Chat do
  def receive_message(message) do
    IO.puts(message)
  end
  def receive_message_for_moebi(message, from) do
    IO.puts message
    send_message(from, "chicken?")
  end
  def send_message(:kemboi@localhost, message) do
    spawn_task(__MODULE__, :receive_message_for_moebi, :kemboi@localhost, [message, Node.self()])
  end
  @doc """
   Takes in the remote node which runs the sepervisor tasks and the messages sent to that node
  """
  def send_message(recipient, message) do
    spawn_task(__MODULE__, :receive_message, recipient, [message])
  end

  def spawn_task(module, fun, recipient, args) do
    recipient
    |> remote_supervisor()
    |> Task.Supervisor.async(module, fun, args)
    |> Task.await()
  end


  defp remote_supervisor(recipient) do
    Application.get_env(:chat, :remote_supervisor).(recipient)
    # {Chat.TaskSupervisor, recipient}
  end
end
