module Handler.Home where

import Import
-- import Yesod.Form.Bootstrap3 ()
-- import Text.Julius ()

getHomeR :: Handler Html
getHomeR = do
    allPosts <- runDB $ selectList [] [Desc BlogPostId]
    defaultLayout $ do
        $(widgetFile "posts/index")
