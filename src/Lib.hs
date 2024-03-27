{-#LANGUAGE OverloadedStrings #-}
module Lib (router) where

import Web.Scotty ( get, html, ActionM, ScottyM, captureParam )

router :: ScottyM ()
router = do
    get "/" getIndexR
    get "/hello/:name" getHelloR

getIndexR :: ActionM ()
getIndexR = do
    html "Hello World!"

getHelloR :: ActionM ()
getHelloR = do
    name <- captureParam "name"
    -- html $ mconcat ["Hello ", name, " !"]
    html $ "Hello " <> name <> " !"