{-# LANGUAGE OverloadedStrings #-}
import Network.Wai
import Network.HTTP.Types (status200)
import Network.Wai.Handler.Warp (run)
import  Data.ByteString.Lazy.Char8
import Data.ByteString.Lazy.Internal(ByteString)


-- {-# INLINE fib #-}
fib :: Int -> Int
fib 0 = 0
fib 1 = 1
fib n = fib (n - 1) + fib (n - 2)

result :: Data.ByteString.Lazy.Internal.ByteString
result = (pack $ show $ fib 20)

main = run 4574 $ \_ ->
  return $ responseLBS status200 [("Content-Type", "text/html")] result
