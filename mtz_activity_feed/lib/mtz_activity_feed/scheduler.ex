defmodule Scheduler do

  def scheduleFile(schedule, file) do
    Quantum.add_job(schedule,
    fn -> IO.puts
    FileReader.getStringToTweet(file) end)
  end

end