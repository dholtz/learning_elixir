defmodule ModulePlayground do

    import IO, only: [puts: 1]
    import Kernel, except: [inspect: 1]

    alias ModulePlayground.Misc.Util.Math, as: MyMath

    require Integer

    def hello do
        inspect "Hello World, it's me!"
    end

    def inspect(param1) do
        puts ("Staring output")
        puts (param1)
        puts ("Ending output")
    end

    def printSum do
       MyMath.add(5,2)
    end
    
    def printIsEven(num) do
        puts "is #{num} even? #{Integer.is_even(num)}"
    end
end