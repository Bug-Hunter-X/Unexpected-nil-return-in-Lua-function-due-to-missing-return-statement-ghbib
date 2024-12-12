local function foo(x)
  if x == nil then
    return nil  -- Forgot to return something for other cases
  elseif x > 10 then
    return x * 2
  end
  return x + 1
end

print(foo(5))  -- Output: 6
print(foo(15)) -- Output: 30
print(foo(nil)) -- Output: nil
print(foo(-5)) -- Output: nil, unexpected!