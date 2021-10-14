module Main exposing (..)

import Browser exposing (Document)
import Element exposing (fill, height, px, width)


type alias Model =
    {}


init : () -> ( Model, Cmd Msg )
init _ =
    ( {}, Cmd.none )


type Msg
    = Anything


update : Msg -> Model -> ( Model, Cmd Msg )
update message model =
    case message of
        Anything ->
            ( model, Cmd.none )


view : Model -> Document Msg
view model =
    { title = "TS-ELM-Boilerplate"
    , body =
        [ Element.layout []
            (Element.column
                [ width fill, height fill ]
                [ Element.el [ width fill, height (px 30) ] <| Element.text "Editor"
                ]
            )
        ]
    }


subscriptions : Model -> Sub Msg
subscriptions model =
    Sub.none


main : Program () Model Msg
main =
    Browser.document
        { init = init
        , update = update
        , view = view
        , subscriptions = subscriptions
        }
