# Huffpoint

Equivalent to [vm.breakpoint](https://book.getfoundry.sh/cheatcodes/breakpoint?highlight=breakpoi#breakpoint) in Foundry.


```
/// @notice Sets breakpoint(<breakpoint_id>, true)
#define macro BREAKPOINT(mem_ptr, breakpoint_id)
```

```
/// @notice Sets breakpoint(<breakpoint_id>, <enabled>)
#define macro SET_BREAKPOINT(mem_ptr, breakpoint_id, enabled)
```

```
/// @notice Sets breakpoint("a", true)
#define macro BREAKPOINTA(mem_ptr)
```

```
/// @notice Sets breakpoint("b", true)
#define macro BREAKPOINTB(mem_ptr)
```
