function Header(el)
  if (el.level <= 1) then
    error("I don't know how to raise the level of h1")
  end
  el.level = el.level - 1
  return el
end
