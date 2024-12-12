local function foo(x)
  if x == nil then
    return nil
  elseif x > 10 then
    return x * 2
  else
    return x + 1  -- Added return statement for x <= 10
  end
end

print(foo(5))  -- Output: 6
print(foo(15)) -- Output: 30
print(foo(nil)) -- Output: nil
print(foo(-5)) -- Output: 0