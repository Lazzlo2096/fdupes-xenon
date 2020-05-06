module Main where
--import Lib

import qualified Data.ByteString.Lazy as LB
import Crypto.Hash

--md5 :: LB.ByteString -> Digest MD5
--md5 = hashlazy

main :: IO ()
main = do
    fileContent <- LB.readFile "foo.txt"
    let md5Digest = hashlazy fileContent :: Digest MD5
    -- let md5Digest = md5 fileContent
    print $ digestToHexByteString md5Digest

    --LB.readFile "foo.txt" >>= print . digestToHexByteString . (hashlazy :: LB.ByteString -> Digest MD5)