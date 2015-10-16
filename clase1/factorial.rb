def factorial( index )
  if( index > 1 )
    return index * factorial( index - 1 )
  else
    return 1
  end
end
puts factorial( 4 )
