<p align="center">
  <a href="https://github.com/devsoutinho">
    <img width="150px" src="https://github.com/devsoutinho.png" alt="Flutter + Firebase logo"><br/>
  </a>
  <h1 align="center">DevSoutinho/FlutterLabs</h1>
</p>

<p align="center">
  <a href="./LICENSE">
    <img src="https://img.shields.io/badge/licence-MIT-blue.svg" alt="License MIT" />
  </a>
  <a href="https://github.com/invertase/melos">
    <img src="https://img.shields.io/badge/maintained%20with-melos-f700ff.svg" alt="Maintained with Melos" />
  </a>
</p>

---

[[Changelog]](./CHANGELOG.md) • [[Packages]](#)

---

This repo contains my current codebase and experiments using flutter

## How everything is structured

- `./libs`: Everything under this folder is an adapter to a package
  - `router`: Is the package that abstracts [go_router](https://pub.dev/packages/go_router)
  - `analytics`: Is a package that abstracts google analytics
  - `design-system`: Abstraction for visual stuff
  - `armor`: Is a package that abstracts the **wrapper that every product must have**
- `./products`: Is the folder that keeps all Products that we have
  - `starter_app`: Just a demo flutter app
  - `netflix_clone`: A more complex web application built with flutter
- `./shells`: It's the entrypoint of the deployment of the main app of this project
  - `web_portal`: Actually the only one working is the web_portal

## Next Steps
- [X] Monorepo with melos
- [X] ... TDB
- [X] Lint changes
- [x] Create extension method for responsive attached to context
  - Reference: https://gist.github.com/yiss/585b368b4cc26f1d6748b9cbb4e4515f
- [X] Implement a better routing solution 
  - Create a definition json or something like this
- [ ] Implement a Larger Interface (Whatsapp/Netflix);
  - Without using stuff from Design System
  - Learn more with work reference
- [ ] Understand melos deplopyment features and how to use it bookworm like

## Support scripts

- `melos create_product <name>`: Creates a new product

## References
- [Netflix UI](https://www.youtube.com/watch?v=rJKN_880b-M)
- [RealWorld](https://github.com/gothinkster/realworld)
