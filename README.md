# hop

**[Hop](https://apphop.io)** is a dead-simple one page website generator.

## Development

### Local server

Run a local server:

```sh
rails server
```

Then go to [localhost:3000](#).

### Database

Create database:

```sh
rails db:create
```


Run migrations:

```sh
rails db:migrate
```

Generate seeds:

```sh
rails db:seed
```

### Working on a new branch

**Remember than one branch means one feature of a user story.**

Make sure you have the latest version of the project:

```sh
git pull origin master
```

Then create a new local branch:

```sh
gco -b branch-name
```

Make your changes, **commit multiple times in your branch** (*recommended*) and once the feature is done (*and directory is clean*), push your work:

```sh
git push origin branch-name
```

Go on [GitHub](https://github.com/backseo/hop) and **create a new pull request**. Your teammates will review it and approve/reject.

- If it is approved, they will merge your pull request into master branch and remove your branch online.

  Pull the result and remove local branch that doesn't exist anymore online:

  ```sh
  git pull origin master
  git sweep
  ```

- If it is not approved, they will comment your PR with what's wrong. Then work again on your local branch. When it's fixed, push again and it will update your PR. **Do not create another branch or pull.**

## Production

### Deploy app

The production server is hosted on Heroku. To deploy:

```sh
git push heroku master
```

### Database

Make sure the database is up-to-date on the production server. To run database commands on the production server, just prefix the development commands with `heroku run`.

**Example**: generate seeds with `heroku run rails db:seed`.

## Good practices

- **DRY**: avoid repeating yourself in the app. Use variables, iterators instead of copy-pasting floating content through the app.
- **Sass**: use the power of Sass for the style part. No more CSS.
- **Unused code**: delete code/files which aren't use in the app.
- **Naming convention**: respect a good naming convention through the whole app (https://gist.github.com/alexpchin/f5d2be2ef3735889d315)
- **Readability**: the code must be readable. Break lines, properly indent...
- **Do what you have to do**: always push something which is in direct link with your branch.
- **Always test**: never push code that doesn't work. Always test in development that your code work.
- **Think responsive**: for the front-end part, try the app on every device size.

## About

Hop has been made during Le Wagon bootcamp by:
- [Numa](https://github.com/numanosk)
- [Quentin](https://github.com/bellangerq)
- [Serge](https://github.com/backseo)
