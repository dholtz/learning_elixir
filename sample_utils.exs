defmodule Sample.Utils do
    def square(a), do: a * a

    def sum(a,b), do: a + b

    def apply(a, f) do
        f.(a)
    end

    def sendTweet(path) do
        case File.read(path) do
            {:ok, data} -> Tweet.send(data)
            {:error, error} -> IO.puts "Could not open socket #{error}"
                
        end
    end

    

end