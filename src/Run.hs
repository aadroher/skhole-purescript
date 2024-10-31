{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE NoImplicitPrelude #-}

module Run (run) where

import Import

run :: RIO App ()
run = do
  logInfo "We're inside the application!"
  env <- ask
  logInfo $ displayShow $ appSomeVar env
