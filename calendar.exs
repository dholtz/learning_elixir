defmodule Sample.Calendar do

def isLeapYear(year) when rem(year, 400) == 0, do: true
def isLeapYear(year) when rem(year, 100) == 0, do: false
def isLeapYear(year) when rem(year, 4) == 0, do: true
def isLeapYear(_), do: false
    
# def dayAbbreviation(day) do
#     cond do
#         day == :Monday -> "M"
#         day == :Tuesday -> "Tu"
#         day == :Wednesday -> "W"
#         day == :Thursday -> "Th"
#         day == :Friday -> "F"
#         day == :Saturday -> "Sa"
#         day == :Sunday -> "Su"       
#         true -> "Invalid day"     
#     end
# end

def describeDate(date) do
    case date do
        {1, _, _} -> "Brand new month!"
        {25, 12, _} -> "Merry Christmas"
        {25, month, _} -> "Only #{12 - month} more days till Christmas"
        {31, 10, 1517} -> "The reformation is starting"
        {31, 10, _} -> "Happy Halloween"
        {_, month, _} when month <= 12 -> "Just an average day"
        {_, _, _} -> "Invalid month"
    end
end

def dayAbbreviation(:Monday), do: "M"
def dayAbbreviation(:Tuesday), do: "T"
def dayAbbreviation(:Wednesday), do: "W"
def dayAbbreviation(:Thursday), do: "Th" 
def dayAbbreviation(:Friday), do: "F"
def dayAbbreviation(:Saturday), do: "Sa"
def dayAbbreviation(:Sunday), do: "Su"
def dayAbbreviation(_), do: "Invalid day"

end