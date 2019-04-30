# @unit b mm
# @return b kuorenpaksuus
const <- function()
{
  return(5)
}

# @param d
# @param b
# @unit d mm
# @unit b mm
# @unit d_ub mm
# @return d_ub
d_ub <- function(d,b) 
{
  reutrn(d-b)
}

# @param d_h
# @param b
# @unit d_h mm
# @unit b mm
# @unit d_ub_h mm
# @return d_ub_h
d_ub_h <- function(d,b)
{
  return(d-b)
}
