{-# LANGUAGE FlexibleContexts #-}

import Network.Neuron
import Network.Layer

import Network.Network
import Network.Network.SOM

import System.Random

main :: IO ()
main = do
  let l = MapDefinition 2 2 3

  g <- newStdGen

  let n = createNetwork normals g l
  print $ neuronMap n
