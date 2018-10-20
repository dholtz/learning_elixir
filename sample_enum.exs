defmodule Sample.Enum do
    
    # def first(list) do
    #     hd(list)
    # end

    # def first([]) do
    #     nil
    # end

    # def first([head | _]) do
    #     head
    # end

    # def first([]), do: nil
    # def first(list)
    #     when length(list) == 0, do: nil

    def first(list, val \\ nil)

    def first([head | _], _), do: head
    
    def first([], val), do: val

    # def length([]), do: 0
    # def length(_ | tail), do: 1 + length(tail)

    def tailLength([_ | tail]), do: tailLength(tail, 1)
    def tailLength([], len), do: len
    def tailLength([_ | tail], len), do: tailLength(tail, len + 1)

    def map([], _), do: []
    def map([hd | tl], f) do
        [f.(hd) | map(tl, f)]
    end

    def add(list, val \\ 0) do
        trace(val)
        [val | list]
    end

    defp trace(string) do
        IO.puts("The value pass in was #{string}")
    end

    def totalPrice(quantity, {_, _, price}) do
        quantity * price
    end

    def square(v) do
        v * v
    end
end