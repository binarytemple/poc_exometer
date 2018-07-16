# PocExometer

## Purpose

Determine dependencies and configuration required in order to run 
[exometer](https://github.com/Feuerlabs/exometer_core) under an Elixir 1.6.6 application.


## Example usage

```
iex -S mix
```

```
iex(3)> :exometer.new('dave',:spiral)
:ok
iex(4)> :exometer.update('dave',10)  
:ok
iex(5)> :exometer.get_value('dave')  
{:ok, [count: 10, one: 10]}
```
