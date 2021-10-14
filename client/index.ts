
type Elm = {
    Main: {
        init(options: { node?: HTMLElement | null }): ElmApp;
    };
};

type Port<ARGS extends any[]> = {
    subscribe(callback: (...args: ARGS) => void): void;
};

type ElmApp = {
    ports: {};
};

const { Elm }: { Elm: Elm } = require("./Main");
const app = Elm.Main.init({});
