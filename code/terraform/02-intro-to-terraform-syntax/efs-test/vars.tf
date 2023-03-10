variable subnet_ids {
  type = list(string)
  default =["subnet-0f0628214a403bbb5","subnet-02f04c1f3803dd734"]
}

variable efsnames{
  type =list(string)
  default = [ "DECODREDbEfs-dev","DECODRMediaEfs-dev" ]
}
# variable  azs{
#   type = list(string)
#   default =["us-east-1c","us-east-1a"]
 
# }

variable env{
  type = string
  default = "dev"
}