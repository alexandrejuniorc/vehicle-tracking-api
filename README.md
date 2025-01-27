# Vehicle Tracking API

## Description

Back-end for Vehicle Tracking System.

## Requirements

It is necessary to integrate with Google Maps. To do this, you need to create an API key on the Google Cloud Platform. To do this, follow these steps:

1. Go to [Google Cloud Platform](https://cloud.google.com/).
2. Create a new project.
3. Activate the Google Maps Places and Directions API.
4. Save the generated API key.

## Project setup

Generate the `.env` file using the command:

```
cp .env.example .env
```

Place the API key generated on Google Cloud Platform in the `.env` file.

Raise the Nest.js and MongoDB containers using the command:

```bash
$ make docker/dev/start
```

Access the container using the command:

```bash
$ make docker/dev/shell
```

Now install the dependencies in the container:

```bash
$ pnpm install
```

## Compile and run the project

```bash
# development
$ pnpm run start

# watch mode
$ pnpm run start:dev

# production mode
$ pnpm run start:prod
```

## Run tests

```bash
# unit tests
$ pnpm run test

# e2e tests
$ pnpm run test:e2e

# test coverage
$ pnpm run test:cov
```

<!-- ## Deployment

When you're ready to deploy your NestJS application to production, there are some key steps you can take to ensure it runs as efficiently as possible. Check out the [deployment documentation](https://docs.nestjs.com/deployment) for more information.

If you are looking for a cloud-based platform to deploy your NestJS application, check out [Mau](https://mau.nestjs.com), our official platform for deploying NestJS applications on AWS. Mau makes deployment straightforward and fast, requiring just a few simple steps:

```bash
$ pnpm install -g mau
$ mau deploy
```

With Mau, you can deploy your application in just a few clicks, allowing you to focus on building features rather than managing infrastructure. -->

<!-- ## Resources

Check out a few resources that may come in handy when working with NestJS:

- Visit the [NestJS Documentation](https://docs.nestjs.com) to learn more about the framework.
- For questions and support, please visit our [Discord channel](https://discord.gg/G7Qnnhy).
- To dive deeper and get more hands-on experience, check out our official video [courses](https://courses.nestjs.com/).
- Deploy your application to AWS with the help of [NestJS Mau](https://mau.nestjs.com) in just a few clicks.
- Visualize your application graph and interact with the NestJS application in real-time using [NestJS Devtools](https://devtools.nestjs.com).
- Need help with your project (part-time to full-time)? Check out our official [enterprise support](https://enterprise.nestjs.com).
- To stay in the loop and get updates, follow us on [X](https://x.com/nestframework) and [LinkedIn](https://linkedin.com/company/nestjs).
- Looking for a job, or have a job to offer? Check out our official [Jobs board](https://jobs.nestjs.com). -->

<!-- ## Support

Nest is an MIT-licensed open source project. It can grow thanks to the sponsors and support by the amazing backers. If you'd like to join them, please [read more here](https://docs.nestjs.com/support). -->

## Stay in touch

- Author - [Alexandre Junior](https://www.linkedin.com/in/alexandrejuniorc/)
- Website - [alejuniordev](https://alejuniordev.vercel.app/en-US)

## License

Nest is [MIT licensed](https://github.com/nestjs/nest/blob/master/LICENSE).
