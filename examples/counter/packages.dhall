let upstream = ../../packages.dhall

in  upstream // { react-basic-native = ../../spago.dhall as Location }
