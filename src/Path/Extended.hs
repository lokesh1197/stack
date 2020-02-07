{-# LANGUAGE CPP #-}

module Path.Extended 
 ( fileExtension
 ) where

import           Control.Monad.Catch
import qualified Path as Path

fileExtension :: MonadThrow m => Path.Path b Path.File -> m String
fileExtension = 
#if MIN_VERSION_path(0,7,0)
    Path.fileExtension
#else
    pure . Path.fileExtension
#endif
