import { NestFactory } from '@nestjs/core';
import { AppModule } from './app.module';

async function bootstrap() {
  const app = await NestFactory.create(AppModule);
  app.enableCors();
  // await app.listen(process.env.PORT ?? 3000);
  await app.init();
  return app;
}
// bootstrap();
export default async function handler(req: Request, res: Response, callback: Callback) {
  const app = await bootstrap();
  app.getHttpAdapter().getInstance()(req, res, callback);
}