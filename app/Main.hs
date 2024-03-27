import Web.Scotty ( scotty )
import Lib (router)

main :: IO ()
main = scotty 3000 router
